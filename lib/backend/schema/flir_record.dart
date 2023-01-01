import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'flir_record.g.dart';

abstract class FlirRecord implements Built<FlirRecord, FlirRecordBuilder> {
  static Serializer<FlirRecord> get serializer => _$flirRecordSerializer;

  String? get flirname;

  DateTime? get createtime;

  DocumentReference? get userref;

  DocumentReference? get adminref;

  BuiltList<PlaceStruct>? get dataplace;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(FlirRecordBuilder builder) => builder
    ..flirname = ''
    ..dataplace = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('flir')
          : FirebaseFirestore.instance.collectionGroup('flir');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('flir').doc();

  static Stream<FlirRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FlirRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FlirRecord._();
  factory FlirRecord([void Function(FlirRecordBuilder) updates]) = _$FlirRecord;

  static FlirRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFlirRecordData({
  String? flirname,
  DateTime? createtime,
  DocumentReference? userref,
  DocumentReference? adminref,
}) {
  final firestoreData = serializers.toFirestore(
    FlirRecord.serializer,
    FlirRecord(
      (f) => f
        ..flirname = flirname
        ..createtime = createtime
        ..userref = userref
        ..adminref = adminref
        ..dataplace = null,
    ),
  );

  return firestoreData;
}
