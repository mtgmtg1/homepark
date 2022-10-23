import 'package:flutter/material.dart';
import 'package:home_park/flutter_flow/flutter_flow_theme.dart';
import 'package:home_park/ti_measure/file_list_widget.dart';

class SpaceModel {
  String spaceName;

  List<String> fileList;
  SpaceModel({required this.fileList, required this.spaceName});
}

class TiMeasureWidget extends StatefulWidget {
  TiMeasureWidget({Key? key}) : super(key: key);

  @override
  State<TiMeasureWidget> createState() => _TiMeasureWidgetState();
}

class _TiMeasureWidgetState extends State<TiMeasureWidget> {
  void hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  List<SpaceModel> spaceList = [];

  final startController = TextEditingController(text: 'FLIR 0001');

  final spaceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => hideKeyboard(context),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
              child: SafeArea(
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
                  '시작파일명',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF686777)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 18),
                child: TextField(
                    controller: startController,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      fillColor: Colors.white,
                      filled: true,
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFFE2E3E4), width: 1)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFFE2E3E4), width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFFE2E3E4), width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(color: Color(0xFFE2E3E4), width: 1)),
                      counterText: "",
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, top: 38, bottom: 10),
                child: Text(
                  '공간리스트',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF686777)),
                ),
              ),
              Container(
                height: 300,
                child: GridView.count(
                  // primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: [
                    ...List.generate(
                        spaceList.length,
                        (index) => GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) {
                                    return Dialog(
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.white,
                                        child: FileListWidget(
                                          fileList: spaceList[index].fileList,
                                        ));
                                  });
                            },
                            child: Container(
                              width: 10,
                              height: 64,
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    spaceList[index].spaceName,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        '${spaceList[index].fileList.length}개',
                                        style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .customColor1,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      )),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF8F8FA),
                                  borderRadius: BorderRadius.circular(12)),
                            )))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 30),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                builder: (BuildContext context) =>
                                    GestureDetector(
                                        onTap: () {
                                          hideKeyboard(context);
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          height: 450,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 40,
                                                    left: 15,
                                                    right: 15,
                                                    bottom: 20),
                                                child: Text(
                                                  '공간 추가',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Divider(
                                                height: 0,
                                                color: Color(0xFFE2E3E4),
                                                thickness: 0.5,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15,
                                                    right: 15,
                                                    top: 17),
                                                child: TextField(
                                                    controller: spaceController,
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black),
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.all(16),
                                                      fillColor: Colors.white,
                                                      filled: true,
                                                      hintStyle: TextStyle(
                                                          color: Color(
                                                                  0xFF686777)
                                                              .withOpacity(0.6),
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                      hintText: '공간을 입력해주세요.',
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                              borderSide: BorderSide(
                                                                  color: Color(
                                                                      0xFFE2E3E4),
                                                                  width: 1)),
                                                      errorBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFFE2E3E4),
                                                              width: 1)),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                              borderSide: BorderSide(
                                                                  color: Color(
                                                                      0xFFE2E3E4),
                                                                  width: 1)),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                              borderSide: BorderSide(
                                                                  color: Color(
                                                                      0xFFE2E3E4),
                                                                  width: 1)),
                                                      counterText: "",
                                                    )),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    spaceList.add(SpaceModel(
                                                        fileList: [],
                                                        spaceName:
                                                            spaceController
                                                                .text));
                                                    spaceController.clear();
                                                  });
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  child: Center(
                                                      child: Text(
                                                    '추가하기',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white),
                                                  )),
                                                  margin: EdgeInsets.only(
                                                      left: 16,
                                                      right: 16,
                                                      bottom: 24,
                                                      top: 150),
                                                  height: 56,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .customColor1,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )),
                              );
                            },
                            child: Text(
                              '공간 추가',
                              style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).customColor1,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              int start = int.parse(
                                  startController.text.replaceAll('FLIR', ''));

                              for (int index = 0; index < 2; index++) {
                                int value =
                                    start + spaceList.last.fileList.length;
                                setState(() {
                                  spaceList.last.fileList.add(
                                      'FLIR ${value.toString().padLeft(4, '0')}');
                                  // fileControllerList.add(TextEditingController(
                                  //     text:
                                  //         'FLIR ${value.toString().padLeft(4, '0')}'));
                                });
                              }
                            },
                            child: Icon(
                              Icons.add,
                              color: Color(0xFF686777).withOpacity(0.6),
                              size: 25,
                            )),
                      ],
                    )),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Center(
                      child: Text(
                    '업로드',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
                  margin: EdgeInsets.only(
                      left: 16, right: 16, bottom: 24, top: 100),
                  height: 56,
                  decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).customColor1,
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ],
          ))),
        ));
  }
}
