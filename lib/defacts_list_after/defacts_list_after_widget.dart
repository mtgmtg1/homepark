import '../backend/backend.dart';
import '../components/drawer_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefactsListAfterWidget extends StatefulWidget {
  const DefactsListAfterWidget({
    Key? key,
    this.userref,
    this.finish,
  }) : super(key: key);

  final DocumentReference? userref;
  final DocumentReference? finish;

  @override
  _DefactsListAfterWidgetState createState() => _DefactsListAfterWidgetState();
}

class _DefactsListAfterWidgetState extends State<DefactsListAfterWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Defacts_list_after',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          drawer: Drawer(
            elevation: 16,
            child: DrawerWidget(),
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.12,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(),
                                child: InkWell(
                                  onTap: () async {
                                    context.pop();
                                  },
                                  child: Icon(
                                    Icons.keyboard_arrow_left_rounded,
                                    color: Color(0xFF333333),
                                    size: 24,
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 1),
                                  child: Text(
                                    '????????? ?????? ?????? ??????',
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .title2Family,
                                          color: Color(0xFF333333),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .title2Family),
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(),
                                child: InkWell(
                                  onTap: () async {
                                    scaffoldKey.currentState!.openDrawer();
                                  },
                                  child: Icon(
                                    Icons.menu_rounded,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: FlutterFlowTheme.of(context).customColor2,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '?????? ??????',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyText1Family,
                                        fontSize: 22,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family),
                                      ),
                                ),
                              ],
                            ),
                            StreamBuilder<List<FinishingRecord>>(
                              stream: queryFinishingRecord(
                                parent: FFAppState().userref,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<FinishingRecord>
                                    columnFinishingRecordList = snapshot.data!;
                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        columnFinishingRecordList.length,
                                        (columnIndex) {
                                      final columnFinishingRecord =
                                          columnFinishingRecordList[
                                              columnIndex];
                                      return Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 10, 0, 0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      10, 0, 0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x2E505050),
                                                            ),
                                                            child:
                                                                SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  ListView(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            columnFinishingRecord.type!,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                  color: FlutterFlowTheme.of(context).customColor1,
                                                                                  fontSize: 16,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            columnFinishingRecord.text!,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                  color: FlutterFlowTheme.of(context).customColor1,
                                                                                  fontSize: 16,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Container(
                                                                        width: MediaQuery.of(context)
                                                                            .size
                                                                            .width,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              3,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Container(
                                                                                      decoration: BoxDecoration(),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Text(
                                                                                            columnFinishingRecord.username!,
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                  fontSize: 12,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            columnFinishingRecord.placename!,
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                  fontSize: 12,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            columnFinishingRecord.detailplace!,
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                  fontSize: 12,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                ),
                                                                                          ),
                                                                                          Container(
                                                                                            width: MediaQuery.of(context).size.width * 0.35,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Text(
                                                                                                  columnFinishingRecord.text!,
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                        fontSize: 12,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                ListView(
                                                                                  padding: EdgeInsets.zero,
                                                                                  shrinkWrap: true,
                                                                                  scrollDirection: Axis.vertical,
                                                                                  children: [
                                                                                    Image.network(
                                                                                      columnFinishingRecord.img!,
                                                                                      width: MediaQuery.of(context).size.width * 0.88,
                                                                                      height: 122,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                    Image.network(
                                                                                      columnFinishingRecord.img2!,
                                                                                      width: MediaQuery.of(context).size.width * 0.88,
                                                                                      height: 122,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 222,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'Defacts_Save',
                          queryParams: {
                            'userref': serializeParam(
                              widget.userref,
                              ParamType.DocumentReference,
                            ),
                            'finish1': serializeParam(
                              widget.finish,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                        );
                      },
                      text: '????????????',
                      options: FFButtonOptions(
                        width: 111,
                        height: 40,
                        color: FlutterFlowTheme.of(context).customColor1,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).subtitle2Family,
                              color: Colors.white,
                              fontSize: 16,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
