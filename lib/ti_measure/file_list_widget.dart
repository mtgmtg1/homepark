
import 'package:flutter/material.dart';
import 'package:home_park/flutter_flow/flutter_flow_theme.dart';

class FileListWidget extends StatelessWidget {
  const FileListWidget({Key? key, required this.fileList}) : super(key: key);
  final List<String> fileList;
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        width: 327,
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 24),
                alignment: Alignment.centerLeft,
                child: Text(
                  '파일 목록',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 300,
              child: ListView(children: [
                ...List.generate(
                    fileList.length,
                    (index) => Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 16, left: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                            color: Color(0xFFF8F8FA),
                                            // image: DecorationImage(
                                            //     fit: BoxFit.cover,
                                            //     image: FileImage(File(
                                            //         pathList[index].path!))),
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
                                                fileList[index],
                                                style: TextStyle(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              )),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                              width: 158,
                                              child: Text(
                                                'user/data/3213/231/${fileList[index]}.jpg',
                                                maxLines: 2,
                                                style: TextStyle(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF686777)),
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                  GestureDetector(
                                      onTap: () {},
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
                margin: EdgeInsets.only(left: 24, right: 24, top: 25),
                height: 56,
                decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).customColor1,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                    child: Text(
                  '전체삭제',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFF0000)),
                )),
                margin:
                    EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 15),
                height: 56,
                decoration: BoxDecoration(
                    color: Color(0xFFF8F8FA),
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
      ),
    );
  }
}
