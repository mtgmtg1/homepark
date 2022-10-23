import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'check_detail_record.g.dart';

abstract class CheckDetailRecord
    implements Built<CheckDetailRecord, CheckDetailRecordBuilder> {
  static Serializer<CheckDetailRecord> get serializer =>
      _$checkDetailRecordSerializer;

  @BuiltValueField(wireName: 'Teamleader')
  String? get teamleader;

  @BuiltValueField(wireName: 'Equipment_Num')
  String? get equipmentNum;

  @BuiltValueField(wireName: 'Top_Manager')
  String? get topManager;

  @BuiltValueField(wireName: 'Manager')
  String? get manager;

  @BuiltValueField(wireName: 'manager_email')
  String? get managerEmail;

  @BuiltValueField(wireName: 'User')
  DocumentReference? get user;

  DocumentReference? get adminref;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CheckDetailRecordBuilder builder) => builder
    ..teamleader = ''
    ..equipmentNum = ''
    ..topManager = ''
    ..manager = ''
    ..managerEmail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Check_detail');

  static Stream<CheckDetailRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CheckDetailRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CheckDetailRecord._();
  factory CheckDetailRecord([void Function(CheckDetailRecordBuilder) updates]) =
      _$CheckDetailRecord;

  static CheckDetailRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCheckDetailRecordData({
  String? teamleader,
  String? equipmentNum,
  String? topManager,
  String? manager,
  String? managerEmail,
  DocumentReference? user,
  DocumentReference? adminref,
}) {
  final firestoreData = serializers.toFirestore(
    CheckDetailRecord.serializer,
    CheckDetailRecord(
      (c) => c
        ..teamleader = teamleader
        ..equipmentNum = equipmentNum
        ..topManager = topManager
        ..manager = manager
        ..managerEmail = managerEmail
        ..user = user
        ..adminref = adminref,
    ),
  );

  return firestoreData;
}
