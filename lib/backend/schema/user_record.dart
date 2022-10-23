import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_record.g.dart';

abstract class UserRecord implements Built<UserRecord, UserRecordBuilder> {
  static Serializer<UserRecord> get serializer => _$userRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'Address')
  String? get address;

  @BuiltValueField(wireName: 'Address_detail')
  String? get addressDetail;

  @BuiltValueField(wireName: 'Check')
  bool? get check;

  @BuiltValueField(wireName: 'ETC')
  String? get etc;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  Color? get checkColor;

  String? get checkTXT;

  bool? get select;

  String? get selectTXT;

  @BuiltValueField(wireName: 'SelectColor')
  Color? get selectColor;

  DocumentReference? get adminRef;

  String? get starttime;

  String? get endtime;

  int? get finishnum;

  int? get levelnum;

  int? get airconditionnum;

  int? get tinum;

  int? get positionnum;

  String? get checkdate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..uid = ''
    ..phoneNumber = ''
    ..address = ''
    ..addressDetail = ''
    ..check = false
    ..etc = ''
    ..photoUrl = ''
    ..checkTXT = ''
    ..select = false
    ..selectTXT = ''
    ..starttime = ''
    ..endtime = ''
    ..finishnum = 0
    ..levelnum = 0
    ..airconditionnum = 0
    ..tinum = 0
    ..positionnum = 0
    ..checkdate = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserRecord._();
  factory UserRecord([void Function(UserRecordBuilder) updates]) = _$UserRecord;

  static UserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? address,
  String? addressDetail,
  bool? check,
  String? etc,
  String? photoUrl,
  Color? checkColor,
  String? checkTXT,
  bool? select,
  String? selectTXT,
  Color? selectColor,
  DocumentReference? adminRef,
  String? starttime,
  String? endtime,
  int? finishnum,
  int? levelnum,
  int? airconditionnum,
  int? tinum,
  int? positionnum,
  String? checkdate,
}) {
  final firestoreData = serializers.toFirestore(
    UserRecord.serializer,
    UserRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..address = address
        ..addressDetail = addressDetail
        ..check = check
        ..etc = etc
        ..photoUrl = photoUrl
        ..checkColor = checkColor
        ..checkTXT = checkTXT
        ..select = select
        ..selectTXT = selectTXT
        ..selectColor = selectColor
        ..adminRef = adminRef
        ..starttime = starttime
        ..endtime = endtime
        ..finishnum = finishnum
        ..levelnum = levelnum
        ..airconditionnum = airconditionnum
        ..tinum = tinum
        ..positionnum = positionnum
        ..checkdate = checkdate,
    ),
  );

  return firestoreData;
}
