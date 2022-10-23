import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _number1 = prefs.getInt('ff_number1') ?? _number1;
    _num2 = prefs.getInt('ff_num2') ?? _num2;
    _num3 = prefs.getInt('ff_num3') ?? _num3;
    _num4 = prefs.getInt('ff_num4') ?? _num4;
    _num5 = prefs.getInt('ff_num5') ?? _num5;
    _num6 = prefs.getInt('ff_num6') ?? _num6;
    _num7 = prefs.getInt('ff_num7') ?? _num7;
    _num8 = prefs.getInt('ff_num8') ?? _num8;
    _num9 = prefs.getInt('ff_num9') ?? _num9;
    _flirnum = prefs.getInt('ff_flirnum') ?? _flirnum;
    _userref = prefs.getString('ff_userref')?.ref ?? _userref;
    _adminref = prefs.getString('ff_adminref')?.ref ?? _adminref;
    _username = prefs.getString('ff_username') ?? _username;
    _finishphoto1 = prefs.getString('ff_finishphoto1') ?? _finishphoto1;
    _finishphoto2 = prefs.getString('ff_finishphoto2') ?? _finishphoto2;
    _finish1 = prefs.getString('ff_finish1')?.ref ?? _finish1;
  }

  late SharedPreferences prefs;

  int _number1 = 0;
  int get number1 => _number1;
  set number1(int _value) {
    _number1 = _value;
    prefs.setInt('ff_number1', _value);
  }

  int _num2 = 0;
  int get num2 => _num2;
  set num2(int _value) {
    _num2 = _value;
    prefs.setInt('ff_num2', _value);
  }

  int _num3 = 0;
  int get num3 => _num3;
  set num3(int _value) {
    _num3 = _value;
    prefs.setInt('ff_num3', _value);
  }

  int _num4 = 0;
  int get num4 => _num4;
  set num4(int _value) {
    _num4 = _value;
    prefs.setInt('ff_num4', _value);
  }

  int _num5 = 0;
  int get num5 => _num5;
  set num5(int _value) {
    _num5 = _value;
    prefs.setInt('ff_num5', _value);
  }

  int _num6 = 0;
  int get num6 => _num6;
  set num6(int _value) {
    _num6 = _value;
    prefs.setInt('ff_num6', _value);
  }

  int _num7 = 0;
  int get num7 => _num7;
  set num7(int _value) {
    _num7 = _value;
    prefs.setInt('ff_num7', _value);
  }

  int _num8 = 0;
  int get num8 => _num8;
  set num8(int _value) {
    _num8 = _value;
    prefs.setInt('ff_num8', _value);
  }

  int _num9 = 0;
  int get num9 => _num9;
  set num9(int _value) {
    _num9 = _value;
    prefs.setInt('ff_num9', _value);
  }

  int _flirnum = 0;
  int get flirnum => _flirnum;
  set flirnum(int _value) {
    _flirnum = _value;
    prefs.setInt('ff_flirnum', _value);
  }

  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  set userref(DocumentReference? _value) {
    if (_value == null) {
      return;
    }
    _userref = _value;
    prefs.setString('ff_userref', _value.path);
  }

  DocumentReference? _adminref;
  DocumentReference? get adminref => _adminref;
  set adminref(DocumentReference? _value) {
    if (_value == null) {
      return;
    }
    _adminref = _value;
    prefs.setString('ff_adminref', _value.path);
  }

  String _username = '';
  String get username => _username;
  set username(String _value) {
    _username = _value;
    prefs.setString('ff_username', _value);
  }

  String _finishphoto1 = '';
  String get finishphoto1 => _finishphoto1;
  set finishphoto1(String _value) {
    _finishphoto1 = _value;
    prefs.setString('ff_finishphoto1', _value);
  }

  String _finishphoto2 = '';
  String get finishphoto2 => _finishphoto2;
  set finishphoto2(String _value) {
    _finishphoto2 = _value;
    prefs.setString('ff_finishphoto2', _value);
  }

  bool searchdone = false;

  DocumentReference? _finish1;
  DocumentReference? get finish1 => _finish1;
  set finish1(DocumentReference? _value) {
    if (_value == null) {
      return;
    }
    _finish1 = _value;
    prefs.setString('ff_finish1', _value.path);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
