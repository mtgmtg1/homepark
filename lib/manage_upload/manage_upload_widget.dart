import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/drawer_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ManageUploadWidget extends StatefulWidget {
  const ManageUploadWidget({
    Key? key,
    this.usercheck3,
  }) : super(key: key);

  final DocumentReference? usercheck3;

  @override
  _ManageUploadWidgetState createState() => _ManageUploadWidgetState();
}

class _ManageUploadWidgetState extends State<ManageUploadWidget> {
  TextEditingController? addressController;
  TextEditingController? addressdetailController;
  TextEditingController? phoneController;
  TextEditingController? usernameController;
  TextEditingController? userdateController;
  TextEditingController? usertimeController;
  TextEditingController? mailController;
  TextEditingController? managerMailController;
  TextEditingController? etcController1;
  TextEditingController? etcController2;
  TextEditingController? etcController3;
  TextEditingController? etcController4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    etcController2 = TextEditingController(text: 'bizkitwon@naver.com');
    managerMailController = TextEditingController(text: currentUserEmail);
    etcController3 = TextEditingController(text: 'mtgmtg@naver.com');
    etcController4 = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    addressController?.dispose();
    addressdetailController?.dispose();
    phoneController?.dispose();
    usernameController?.dispose();
    userdateController?.dispose();
    usertimeController?.dispose();
    mailController?.dispose();
    managerMailController?.dispose();
    etcController1?.dispose();
    etcController2?.dispose();
    etcController3?.dispose();
    etcController4?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserRecord>(
      stream: UserRecord.getDocument(FFAppState().userref!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final manageUploadUserRecord = snapshot.data!;
        return Title(
            title: 'Manage_Upload',
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 1),
                                      child: Text(
                                        '리포트 발송정보 확인',
                                        style: FlutterFlowTheme.of(context)
                                            .title2
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .title2Family,
                                              color: Color(0xFF333333),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2Family),
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ListView(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          decoration:
                                                              BoxDecoration(),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        10,
                                                                        20,
                                                                        10),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.44,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        '마감재',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                              fontWeight: FontWeight.bold,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.2,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                ),
                                                                InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        'Defacts_Save');
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_rounded,
                                                                    color: Color(
                                                                        0xFF727272),
                                                                    size: 12,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Divider(
                                                        height: 1,
                                                        thickness: 1,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor4,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    0, 10),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        0,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.5,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        '열화상',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                              fontWeight: FontWeight.bold,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.2,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                ),
                                                                InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        'Defacts_Save');
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_rounded,
                                                                    color: Color(
                                                                        0xFF727272),
                                                                    size: 12,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Divider(
                                                        height: 1,
                                                        thickness: 1,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor4,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    0, 10),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        0,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.5,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        '공기질',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                              fontWeight: FontWeight.bold,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.2,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                ),
                                                                InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        'Defacts_Save');
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_rounded,
                                                                    color: Color(
                                                                        0xFF727272),
                                                                    size: 12,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Divider(
                                                        height: 1,
                                                        thickness: 1,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor4,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    0, 10),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        0,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.5,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        '레벨기',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.bold,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.2,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                ),
                                                                InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        'Defacts_Save');
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_rounded,
                                                                    color: Color(
                                                                        0xFF727272),
                                                                    size: 12,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Divider(
                                                        height: 1,
                                                        thickness: 1,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor4,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            3,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.stretch,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                '고객 이름',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 13,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                              ),
                                                                              Container(
                                                                                width: 230,
                                                                                decoration: BoxDecoration(),
                                                                                child: TextFormField(
                                                                                  controller: usernameController ??= TextEditingController(
                                                                                    text: manageUploadUserRecord.displayName,
                                                                                  ),
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          fontSize: 13,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                        fontSize: 13,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                      ),
                                                                                  keyboardType: TextInputType.datetime,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                '전화번호',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 13,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                              ),
                                                                              Container(
                                                                                width: 230,
                                                                                height: 30,
                                                                                decoration: BoxDecoration(),
                                                                                child: TextFormField(
                                                                                  controller: phoneController ??= TextEditingController(
                                                                                    text: manageUploadUserRecord.phoneNumber,
                                                                                  ),
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          fontSize: 13,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                        fontSize: 13,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                      ),
                                                                                  keyboardType: TextInputType.datetime,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                '점검일',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 13,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                              ),
                                                                              Container(
                                                                                width: 230,
                                                                                height: 30,
                                                                                decoration: BoxDecoration(),
                                                                                child: TextFormField(
                                                                                  controller: userdateController ??= TextEditingController(
                                                                                    text: manageUploadUserRecord.checkdate,
                                                                                  ),
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          fontSize: 13,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                        fontSize: 13,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                      ),
                                                                                  keyboardType: TextInputType.datetime,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                '점검시간',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 13,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                              ),
                                                                              Container(
                                                                                width: 230,
                                                                                height: 30,
                                                                                decoration: BoxDecoration(),
                                                                                child: TextFormField(
                                                                                  controller: usertimeController ??= TextEditingController(
                                                                                    text: manageUploadUserRecord.starttime,
                                                                                  ),
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          fontSize: 13,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                        fontSize: 13,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                      ),
                                                                                  keyboardType: TextInputType.datetime,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                '현장 주소',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 13,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                              ),
                                                                              SingleChildScrollView(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 230,
                                                                                      height: 30,
                                                                                      decoration: BoxDecoration(),
                                                                                      child: TextFormField(
                                                                                        controller: addressController ??= TextEditingController(
                                                                                          text: manageUploadUserRecord.address,
                                                                                        ),
                                                                                        autofocus: true,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                fontSize: 13,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                              ),
                                                                                          enabledBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0xFF404040),
                                                                                              width: 0.5,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(0),
                                                                                          ),
                                                                                          focusedBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0xFF404040),
                                                                                              width: 0.5,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(0),
                                                                                          ),
                                                                                          errorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 0.5,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(0),
                                                                                          ),
                                                                                          focusedErrorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 0.5,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(0),
                                                                                          ),
                                                                                          contentPadding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                              fontSize: 13,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                            ),
                                                                                        keyboardType: TextInputType.streetAddress,
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                                                                      child: Container(
                                                                                        width: 230,
                                                                                        height: 30,
                                                                                        decoration: BoxDecoration(),
                                                                                        child: TextFormField(
                                                                                          controller: addressdetailController ??= TextEditingController(
                                                                                            text: manageUploadUserRecord.addressDetail,
                                                                                          ),
                                                                                          autofocus: true,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                                  fontSize: 13,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                                ),
                                                                                            enabledBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFF404040),
                                                                                                width: 0.5,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(0),
                                                                                            ),
                                                                                            focusedBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFF404040),
                                                                                                width: 0.5,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(0),
                                                                                            ),
                                                                                            errorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0x00000000),
                                                                                                width: 0.5,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(0),
                                                                                            ),
                                                                                            focusedErrorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0x00000000),
                                                                                                width: 0.5,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(0),
                                                                                            ),
                                                                                            contentPadding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                fontSize: 13,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                              ),
                                                                                          keyboardType: TextInputType.streetAddress,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                '고객님 메일',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 13,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                              ),
                                                                              Container(
                                                                                width: 230,
                                                                                height: 30,
                                                                                decoration: BoxDecoration(),
                                                                                child: TextFormField(
                                                                                  controller: mailController ??= TextEditingController(
                                                                                    text: manageUploadUserRecord.email,
                                                                                  ),
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          fontSize: 13,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                        fontSize: 13,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                      ),
                                                                                  keyboardType: TextInputType.emailAddress,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                '관리자 메일',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 13,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                              ),
                                                                              Container(
                                                                                width: 230,
                                                                                height: 30,
                                                                                decoration: BoxDecoration(),
                                                                                child: StreamBuilder<List<CheckDetailRecord>>(
                                                                                  stream: queryCheckDetailRecord(
                                                                                    singleRecord: true,
                                                                                  ),
                                                                                  builder: (context, snapshot) {
                                                                                    // Customize what your widget looks like when it's loading.
                                                                                    if (!snapshot.hasData) {
                                                                                      return Center(
                                                                                        child: SizedBox(
                                                                                          width: 50,
                                                                                          height: 50,
                                                                                          child: CircularProgressIndicator(
                                                                                            color: FlutterFlowTheme.of(context).primaryColor,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    }
                                                                                    List<CheckDetailRecord> managerMailCheckDetailRecordList = snapshot.data!;
                                                                                    // Return an empty Container when the document does not exist.
                                                                                    if (snapshot.data!.isEmpty) {
                                                                                      return Container();
                                                                                    }
                                                                                    final managerMailCheckDetailRecord = managerMailCheckDetailRecordList.isNotEmpty ? managerMailCheckDetailRecordList.first : null;
                                                                                    return TextFormField(
                                                                                      controller: managerMailController,
                                                                                      autofocus: true,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                              fontSize: 13,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: Color(0xFF404040),
                                                                                            width: 0.5,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: Color(0xFF404040),
                                                                                            width: 0.5,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: Color(0x00000000),
                                                                                            width: 0.5,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: Color(0x00000000),
                                                                                            width: 0.5,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(0),
                                                                                        ),
                                                                                        contentPadding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                            fontSize: 13,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                          ),
                                                                                      keyboardType: TextInputType.emailAddress,
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                '특이사항',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 13,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                              ),
                                                                              Container(
                                                                                width: 230,
                                                                                height: 30,
                                                                                decoration: BoxDecoration(),
                                                                                child: TextFormField(
                                                                                  controller: etcController1 ??= TextEditingController(
                                                                                    text: manageUploadUserRecord.etc,
                                                                                  ),
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          fontSize: 13,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                        fontSize: 13,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                '추가발송 이메일주소1',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 13,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                              ),
                                                                              Container(
                                                                                width: 230,
                                                                                height: 30,
                                                                                decoration: BoxDecoration(),
                                                                                child: TextFormField(
                                                                                  controller: etcController2,
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          fontSize: 13,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                        fontSize: 13,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                '추가발송 이메일주소2',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 13,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                              ),
                                                                              Container(
                                                                                width: 230,
                                                                                height: 30,
                                                                                decoration: BoxDecoration(),
                                                                                child: TextFormField(
                                                                                  controller: etcController3,
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          fontSize: 13,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                        fontSize: 13,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                '추가발송 이메일주소3',
                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 13,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                    ),
                                                                              ),
                                                                              Container(
                                                                                width: 230,
                                                                                height: 30,
                                                                                decoration: BoxDecoration(),
                                                                                child: TextFormField(
                                                                                  controller: etcController4,
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                                                                                          fontSize: 13,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText2Family),
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF404040),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 0.5,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(0),
                                                                                    ),
                                                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                        fontSize: 13,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
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
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      final emailCreateData =
                                          createEmailRecordData(
                                        name: FFAppState().username,
                                        userref: FFAppState().userref,
                                        adminref: FFAppState().adminref,
                                      );
                                      await EmailRecord.collection
                                          .doc()
                                          .set(emailCreateData);

                                      context.pushNamed(
                                        'Home2',
                                        queryParams: {
                                          'userref': serializeParam(
                                            widget.usercheck3,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    text: '리포트 발송',
                                    options: FFButtonOptions(
                                      width: 222,
                                      height: 55,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2Family,
                                            color: Colors.white,
                                            fontSize: 16,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2Family),
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        'Home5',
                                        queryParams: {
                                          'userDetail': serializeParam(
                                            widget.usercheck3,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );

                                      final emailCreateData =
                                          createEmailRecordData(
                                        name: FFAppState().username,
                                        sentnumber: int.parse(
                                            phoneController?.text ?? ''),
                                        userref: widget.usercheck3,
                                        adminref: currentUserReference,
                                      );
                                      await EmailRecord.collection
                                          .doc()
                                          .set(emailCreateData);
                                    },
                                    text: '메인화면',
                                    options: FFButtonOptions(
                                      width: 222,
                                      height: 55,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2Family,
                                            color: Colors.white,
                                            fontSize: 16,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2Family),
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
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
            ));
      },
    );
  }
}
