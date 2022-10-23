import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CheckerCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Checker',
      apiUrl:
          'https://api.sheety.co/e22be75f8889a324927c327608e36acb/chmsApp/checker',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic eQNum(dynamic response) => getJsonField(
        response,
        r'''$.checker[:].장비번호''',
        true,
      );
  static dynamic tl(dynamic response) => getJsonField(
        response,
        r'''$.checker[:].팀장''',
        true,
      );
  static dynamic head(dynamic response) => getJsonField(
        response,
        r'''$.checker[:].소장''',
        true,
      );
  static dynamic manager(dynamic response) => getJsonField(
        response,
        r'''$.checker[:].매니저''',
        true,
      );
  static dynamic managerMail(dynamic response) => getJsonField(
        response,
        r'''$.checker[:].매니저이메일''',
        true,
      );
  static dynamic checkerId(dynamic response) => getJsonField(
        response,
        r'''$.checker[:].id''',
        true,
      );
}

class ProfileCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'profile',
      apiUrl:
          'https://api.sheety.co/e22be75f8889a324927c327608e36acb/chmsApp/user',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.user[:].이름''',
        true,
      );
  static dynamic meil(dynamic response) => getJsonField(
        response,
        r'''$.user[:].메일''',
        true,
      );
  static dynamic enter(dynamic response) => getJsonField(
        response,
        r'''$.user[:].가입일''',
        true,
      );
  static dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$.user[:].전화번호''',
        true,
      );
  static dynamic adress(dynamic response) => getJsonField(
        response,
        r'''$.user[:].주소''',
        true,
      );
  static dynamic adressDetail(dynamic response) => getJsonField(
        response,
        r'''$.user[:].상세주소''',
        true,
      );
  static dynamic etc(dynamic response) => getJsonField(
        response,
        r'''$.user[:].특이사항''',
        true,
      );
  static dynamic color(dynamic response) => getJsonField(
        response,
        r'''$.user[:].컬러''',
        true,
      );
  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.user[:].id''',
        true,
      );
  static dynamic checkDate(dynamic response) => getJsonField(
        response,
        r'''$.user[:].점검일''',
        true,
      );
  static dynamic checkStart(dynamic response) => getJsonField(
        response,
        r'''$.user[:].점검시작''',
        true,
      );
  static dynamic checkEnd(dynamic response) => getJsonField(
        response,
        r'''$.user[:].점검완료''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}
