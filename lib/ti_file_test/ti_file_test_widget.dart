import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_park/auth/auth_util.dart';
import 'package:home_park/backend/backend.dart';
import 'package:home_park/flutter_flow/flutter_flow_theme.dart';

void showLoadingDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (_) {
        return Dialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            insetPadding: EdgeInsets.zero,
            backgroundColor: Colors.white,
            child: UnconstrainedBox(
              child: Container(
                width: 327,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).customColor1,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      '로딩중..',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF8C8E8D)),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
            ));
      });
}

extension loadingExtend<T> on Future {
  Future<T> load(BuildContext context) async {
    showLoadingDialog(context);
    whenComplete(() {
      Navigator.pop(context);
    });
    catchError((e) {});

    return await this;
  }
}

class ImageUrlModel {
  String fileName;
  String url;
  ImageUrlModel({required this.fileName, required this.url});

  Map<String, dynamic> toJson() {
    return {'fileName': this.fileName, 'url': this.url};
  }

  static ImageUrlModel fromJson(Map<String, dynamic> json) {
    return ImageUrlModel(fileName: json['fileName'], url: json['url']);
  }
}

enum UploadState { fileExist, success, failed }

class TiFileTestWidget extends StatefulWidget {
  @override
  _TiFileTestWidgetState createState() => _TiFileTestWidgetState();
}

class _TiFileTestWidgetState extends State<TiFileTestWidget> {
  DocumentReference<Map> documentRef =
      FirebaseFirestore.instance.collection('image_url').doc(currentUserUid);
  List<dynamic>? imageUrlList;
  List<PlatformFile> pathList = [];
  List<ImageUrlModel> imageUrlModelList = [];
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      loadImageUrl().load(context);
    });
  }

  Future<UploadState> uploadFile() async {
    try {
      for (PlatformFile path in pathList) {
        String fileName = path.name;
        if (isExist(fileName)) {
          return UploadState.fileExist;
        }
      }

      for (PlatformFile path in pathList) {
        String fileName = path.name;

        Reference storageReference = FirebaseStorage.instance
            .ref()
            .child('users/$currentUserUid/uploads/$fileName');

        await storageReference.putFile(File(path.path!));
        String uploadUrl = await storageReference.getDownloadURL();
        await addImageUrl(fileName, uploadUrl);
      }
      return UploadState.success;
    } catch (e) {
      return UploadState.failed;
    }
  }

  void showExceptionDialog(String title, String msg) {
    showDialog(
        context: context,
        builder: (_) {
          return Dialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              insetPadding: EdgeInsets.zero,
              backgroundColor: Colors.white,
              child: UnconstrainedBox(
                child: Container(
                  width: 327,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        msg,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8C8E8D)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            '확인',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )),
                          margin: EdgeInsets.only(
                              left: 24, right: 24, bottom: 24, top: 45),
                          height: 56,
                          decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).customColor1,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                ),
              ));
        });
  }

  bool isExist(String fileName) {
    for (ImageUrlModel imageUrlModel in imageUrlModelList) {
      if (imageUrlModel.fileName == fileName) {
        return true;
      }
    }
    return false;
  }

  Future<void> loadImageUrl() async {
    DocumentSnapshot snapshot = await documentRef.get();
    if (snapshot.data() != null) {
      List<dynamic> datas =
          (snapshot.data() as Map<String, dynamic>)['datas'] as List<dynamic>;
      imageUrlModelList =
          datas.map((json) => ImageUrlModel.fromJson(json)).toList();
    }
  }

  Future<void> addImageUrl(String fileName, String url) async {
    imageUrlModelList.add(ImageUrlModel(fileName: fileName, url: url));
    Map<String, dynamic> datas = {
      'datas': imageUrlModelList.map((model) => model.toJson()).toList()
    };
    print(datas);
    await documentRef.set(datas);
  }

  void _resetState() {
    if (!mounted) {
      return;
    }
    setState(() {
      pathList = [];
    });
  }

  Future<void> pickFiles() async {
    _resetState();
    try {
      pathList = (await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowMultiple: true,
        onFileLoading: (FilePickerStatus status) => print(status),
        allowedExtensions: ['jpg'],
      ))!
          .files;
      print(pathList.first.path);
    } on PlatformException catch (e) {
    } catch (e) {}
    if (!mounted) return;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              '전자통합관리시스템',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Divider(
            height: 0,
            color: Color(0xFFE2E3E4),
            thickness: 0.5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, top: 24),
            child: Text(
              '파일 목록',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF686777)),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 400,
            child: pathList.isEmpty
                ? Center(
                    child: Text(
                    '파일을 선택해주세요.',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF686777)),
                  ))
                : ListView(children: [
                    ...List.generate(
                        pathList.length,
                        (index) => Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 16, left: 16),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 16),
                                            width: 64,
                                            height: 64,
                                            decoration: BoxDecoration(
                                                // color: Color(0xFFF8F8FA),
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: FileImage(File(
                                                        pathList[index]
                                                            .path!))),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                  width: 158,
                                                  child: Text(
                                                    pathList[index].name,
                                                    style: TextStyle(
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                  )),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                  width: 158,
                                                  child: Text(
                                                    pathList[index].path!,
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xFF686777)),
                                                  )),
                                            ],
                                          )
                                        ],
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              pathList.removeAt(index);
                                            });
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 22),
                                            child: Icon(
                                              Icons.close,
                                              color: Color(0xFF686777),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16, right: 16),
                                  child: Divider(
                                    height: 0,
                                    color: Color(0xFFE2E3E4),
                                    thickness: 0.5,
                                  ),
                                )
                              ],
                            ))
                  ]),
          ),
          GestureDetector(
            onTap: () {
              pickFiles().load(context);
            },
            child: Container(
              child: Center(
                  child: Text(
                '파일 선택',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              )),
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 24),
              height: 56,
              decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).customColor1,
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          GestureDetector(
            onTap: () async {
              UploadState state = await uploadFile().load(context);
              if (state == UploadState.success) {
                showExceptionDialog('업로드 성공', '파일 업로드에 성공하였습니다.');
              }
              if (state == UploadState.fileExist) {
                showExceptionDialog('에러 발생', '중복되는 파일명이 있습니다.');
              }
              if (state == UploadState.failed) {
                showExceptionDialog('에러 발생', '파일 업로드에 실패하였습니다.');
              }
            },
            child: Container(
              child: Center(
                  child: Text(
                '업로드',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: FlutterFlowTheme.of(context).customColor1),
              )),
              margin: EdgeInsets.only(left: 16, right: 16),
              height: 56,
              decoration: BoxDecoration(
                  color: Color(0xFFF8F8FA),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ],
      )),
    );
  }
}


// import '../backend/backend.dart';
// import '../components/drawer_widget.dart';
// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
// import '../flutter_flow/flutter_flow_widgets.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class TiFileTestWidget extends StatefulWidget {
//   const TiFileTestWidget({
//     Key? key,
//     this.usercheck2,
//   }) : super(key: key);

//   final DocumentReference? usercheck2;

//   @override
//   _TiFileTestWidgetState createState() => _TiFileTestWidgetState();
// }

// class _TiFileTestWidgetState extends State<TiFileTestWidget> {
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();

//     WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Title(
//         title: 'Ti_File_Test',
//         color: FlutterFlowTheme.of(context).primaryColor,
//         child: Scaffold(
//           key: scaffoldKey,
//           backgroundColor: Colors.white,
//           drawer: Drawer(
//             elevation: 16,
//             child: DrawerWidget(),
//           ),
//           body: GestureDetector(
//             onTap: () => FocusScope.of(context).unfocus(),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height * 0.12,
//                   decoration: BoxDecoration(),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.2,
//                               decoration: BoxDecoration(),
//                               child: InkWell(
//                                 onTap: () async {
//                                   context.pop();
//                                 },
//                                 child: Icon(
//                                   Icons.keyboard_arrow_left_rounded,
//                                   color: Color(0xFF333333),
//                                   size: 24,
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.5,
//                               decoration: BoxDecoration(),
//                               child: Align(
//                                 alignment: AlignmentDirectional(0, 1),
//                                 child: Text(
//                                   '열화상 파일 검사',
//                                   style: FlutterFlowTheme.of(context)
//                                       .title2
//                                       .override(
//                                         fontFamily: FlutterFlowTheme.of(context)
//                                             .title2Family,
//                                         color: Color(0xFF333333),
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.w500,
//                                         useGoogleFonts: GoogleFonts.asMap()
//                                             .containsKey(
//                                                 FlutterFlowTheme.of(context)
//                                                     .title2Family),
//                                       ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.2,
//                               decoration: BoxDecoration(),
//                               child: InkWell(
//                                 onTap: () async {
//                                   scaffoldKey.currentState!.openDrawer();
//                                 },
//                                 child: Icon(
//                                   Icons.menu_rounded,
//                                   color: Colors.black,
//                                   size: 20,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Divider(
//                         height: 1,
//                         thickness: 1,
//                         color: FlutterFlowTheme.of(context).customColor2,
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.9,
//                   height: MediaQuery.of(context).size.height * 0.77,
//                   decoration: BoxDecoration(),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 8),
//                           child: Text(
//                             '#열화상 사진 ( 100장 )',
//                             style: FlutterFlowTheme.of(context)
//                                 .bodyText1
//                                 .override(
//                                   fontFamily: FlutterFlowTheme.of(context)
//                                       .bodyText1Family,
//                                   color:
//                                       FlutterFlowTheme.of(context).customColor1,
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.bold,
//                                   useGoogleFonts: GoogleFonts.asMap()
//                                       .containsKey(FlutterFlowTheme.of(context)
//                                           .bodyText1Family),
//                                 ),
//                           ),
//                         ),
//                         Divider(
//                           height: 1,
//                           thickness: 1,
//                           color: Color(0xFFE0E0E0),
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                           child: Container(
//                             width: MediaQuery.of(context).size.width,
//                             decoration: BoxDecoration(
//                               color: FlutterFlowTheme.of(context)
//                                   .secondaryBackground,
//                             ),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       0, 0, 7, 0),
//                                   child: StreamBuilder<List<TiRecord>>(
//                                     stream: queryTiRecord(),
//                                     builder: (context, snapshot) {
//                                       // Customize what your widget looks like when it's loading.
//                                       if (!snapshot.hasData) {
//                                         return Center(
//                                           child: SizedBox(
//                                             width: 50,
//                                             height: 50,
//                                             child: CircularProgressIndicator(
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primaryColor,
//                                             ),
//                                           ),
//                                         );
//                                       }
//                                       List<TiRecord> evenTiRecordList =
//                                           snapshot.data!;
//                                       return Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: List.generate(
//                                             evenTiRecordList.length,
//                                             (evenIndex) {
//                                           final evenTiRecord =
//                                               evenTiRecordList[evenIndex];
//                                           return Padding(
//                                             padding:
//                                                 EdgeInsetsDirectional.fromSTEB(
//                                                     0, 0, 0, 10),
//                                             child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width *
//                                                   0.4,
//                                               height: MediaQuery.of(context)
//                                                       .size
//                                                       .height *
//                                                   0.05,
//                                               decoration: BoxDecoration(
//                                                 color:
//                                                     FlutterFlowTheme.of(context)
//                                                         .customColor5,
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 border: Border.all(
//                                                   color: FlutterFlowTheme.of(
//                                                           context)
//                                                       .customColor2,
//                                                 ),
//                                               ),
//                                               child: Align(
//                                                 alignment:
//                                                     AlignmentDirectional(0, 0),
//                                                 child: Text(
//                                                   'FLIR1840.jpg',
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily:
//                                                             FlutterFlowTheme.of(
//                                                                     context)
//                                                                 .bodyText1Family,
//                                                         fontSize: 14,
//                                                         useGoogleFonts: GoogleFonts
//                                                                 .asMap()
//                                                             .containsKey(
//                                                                 FlutterFlowTheme.of(
//                                                                         context)
//                                                                     .bodyText1Family),
//                                                       ),
//                                                 ),
//                                               ),
//                                             ),
//                                           );
//                                         }),
//                                       );
//                                     },
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       7, 0, 0, 0),
//                                   child: StreamBuilder<List<TiRecord>>(
//                                     stream: queryTiRecord(),
//                                     builder: (context, snapshot) {
//                                       // Customize what your widget looks like when it's loading.
//                                       if (!snapshot.hasData) {
//                                         return Center(
//                                           child: SizedBox(
//                                             width: 50,
//                                             height: 50,
//                                             child: CircularProgressIndicator(
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primaryColor,
//                                             ),
//                                           ),
//                                         );
//                                       }
//                                       List<TiRecord> oddTiRecordList =
//                                           snapshot.data!;
//                                       return Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: List.generate(
//                                             oddTiRecordList.length, (oddIndex) {
//                                           final oddTiRecord =
//                                               oddTiRecordList[oddIndex];
//                                           return Padding(
//                                             padding:
//                                                 EdgeInsetsDirectional.fromSTEB(
//                                                     0, 0, 0, 10),
//                                             child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width *
//                                                   0.4,
//                                               height: MediaQuery.of(context)
//                                                       .size
//                                                       .height *
//                                                   0.05,
//                                               decoration: BoxDecoration(
//                                                 color:
//                                                     FlutterFlowTheme.of(context)
//                                                         .customColor5,
//                                                 borderRadius:
//                                                     BorderRadius.circular(5),
//                                                 border: Border.all(
//                                                   color: FlutterFlowTheme.of(
//                                                           context)
//                                                       .customColor2,
//                                                 ),
//                                               ),
//                                               child: Align(
//                                                 alignment:
//                                                     AlignmentDirectional(0, 0),
//                                                 child: Text(
//                                                   'FLIR1841.jpg',
//                                                   style: FlutterFlowTheme.of(
//                                                           context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily:
//                                                             FlutterFlowTheme.of(
//                                                                     context)
//                                                                 .bodyText1Family,
//                                                         fontSize: 14,
//                                                         useGoogleFonts: GoogleFonts
//                                                                 .asMap()
//                                                             .containsKey(
//                                                                 FlutterFlowTheme.of(
//                                                                         context)
//                                                                     .bodyText1Family),
//                                                       ),
//                                                 ),
//                                               ),
//                                             ),
//                                           );
//                                         }),
//                                       );
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.99,
//                   height: MediaQuery.of(context).size.height * 0.05,
//                   decoration: BoxDecoration(),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
//                         child: FFButtonWidget(
//                           onPressed: () async {
//                             context.pushNamed(
//                               'Ti_Measure_check',
//                               queryParams: {
//                                 'userref': serializeParam(
//                                   widget.usercheck2,
//                                   ParamType.DocumentReference,
//                                 ),
//                               }.withoutNulls,
//                             );
//                           },
//                           text: '업로드',
//                           options: FFButtonOptions(
//                             width: 164,
//                             height: 40,
//                             color: FlutterFlowTheme.of(context).customColor4,
//                             textStyle: FlutterFlowTheme.of(context)
//                                 .subtitle2
//                                 .override(
//                                   fontFamily: FlutterFlowTheme.of(context)
//                                       .subtitle2Family,
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                   useGoogleFonts: GoogleFonts.asMap()
//                                       .containsKey(FlutterFlowTheme.of(context)
//                                           .subtitle2Family),
//                                 ),
//                             borderSide: BorderSide(
//                               color: Colors.transparent,
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(0),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
//                         child: FFButtonWidget(
//                           onPressed: () async {
//                             context.pushNamed('Home5');
//                           },
//                           text: 'FLIR 다운로드',
//                           options: FFButtonOptions(
//                             width: 164,
//                             height: 40,
//                             color: FlutterFlowTheme.of(context).customColor1,
//                             textStyle: FlutterFlowTheme.of(context)
//                                 .subtitle2
//                                 .override(
//                                   fontFamily: FlutterFlowTheme.of(context)
//                                       .subtitle2Family,
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                   useGoogleFonts: GoogleFonts.asMap()
//                                       .containsKey(FlutterFlowTheme.of(context)
//                                           .subtitle2Family),
//                                 ),
//                             borderSide: BorderSide(
//                               color: Colors.transparent,
//                               width: 1,
//                             ),
//                             borderRadius: BorderRadius.circular(0),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
