import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'aircondition_record.g.dart';

abstract class AirconditionRecord
    implements Built<AirconditionRecord, AirconditionRecordBuilder> {
  static Serializer<AirconditionRecord> get serializer =>
      _$airconditionRecordSerializer;

  @BuiltValueField(wireName: 'TVOC1')
  String? get tvoc1;

  @BuiltValueField(wireName: 'IMG')
  String? get img;

  bool? get check;

  @BuiltValueField(wireName: 'User')
  DocumentReference? get user;

  BuiltList<double>? get radon;

  DocumentReference? get adminref;

  @BuiltValueField(wireName: 'HOHC')
  BuiltList<String>? get hohc;

  BuiltList<PlaceStruct>? get dataplace;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(AirconditionRecordBuilder builder) => builder
    ..tvoc1 = ''
    ..img = ''
    ..check = false
    ..radon = ListBuilder()
    ..hohc = ListBuilder()
    ..dataplace = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Aircondition')
          : FirebaseFirestore.instance.collectionGroup('Aircondition');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Aircondition').doc();

  static Stream<AirconditionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AirconditionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AirconditionRecord._();
  factory AirconditionRecord(
          [void Function(AirconditionRecordBuilder) updates]) =
      _$AirconditionRecord;

  static AirconditionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAirconditionRecordData({
  String? tvoc1,
  String? img,
  bool? check,
  DocumentReference? user,
  DocumentReference? adminref,
}) {
  final firestoreData = serializers.toFirestore(
    AirconditionRecord.serializer,
    AirconditionRecord(
      (a) => a
        ..tvoc1 = tvoc1
        ..img = img
        ..check = check
        ..user = user
        ..radon = null
        ..adminref = adminref
        ..hohc = null
        ..dataplace = null,
    ),
  );

  return firestoreData;
}
