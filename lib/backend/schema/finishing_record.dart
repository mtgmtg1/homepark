import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'finishing_record.g.dart';

abstract class FinishingRecord
    implements Built<FinishingRecord, FinishingRecordBuilder> {
  static Serializer<FinishingRecord> get serializer =>
      _$finishingRecordSerializer;

  String? get type;

  @BuiltValueField(wireName: 'IMG')
  String? get img;

  bool? get check;

  String? get text;

  String? get username;

  BuiltList<PlaceStruct>? get dataplace;

  String? get img2;

  String? get placename;

  String? get detailplace;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(FinishingRecordBuilder builder) => builder
    ..type = ''
    ..img = ''
    ..check = false
    ..text = ''
    ..username = ''
    ..dataplace = ListBuilder()
    ..img2 = ''
    ..placename = ''
    ..detailplace = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Finishing')
          : FirebaseFirestore.instance.collectionGroup('Finishing');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Finishing').doc();

  static Stream<FinishingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FinishingRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FinishingRecord._();
  factory FinishingRecord([void Function(FinishingRecordBuilder) updates]) =
      _$FinishingRecord;

  static FinishingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFinishingRecordData({
  String? type,
  String? img,
  bool? check,
  String? text,
  String? username,
  String? img2,
  String? placename,
  String? detailplace,
}) {
  final firestoreData = serializers.toFirestore(
    FinishingRecord.serializer,
    FinishingRecord(
      (f) => f
        ..type = type
        ..img = img
        ..check = check
        ..text = text
        ..username = username
        ..dataplace = null
        ..img2 = img2
        ..placename = placename
        ..detailplace = detailplace,
    ),
  );

  return firestoreData;
}
