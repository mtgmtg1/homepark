import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'level_record.g.dart';

abstract class LevelRecord implements Built<LevelRecord, LevelRecordBuilder> {
  static Serializer<LevelRecord> get serializer => _$levelRecordSerializer;

  @BuiltValueField(wireName: 'Num1')
  String? get num1;

  @BuiltValueField(wireName: 'Num2')
  String? get num2;

  @BuiltValueField(wireName: 'Num3')
  String? get num3;

  @BuiltValueField(wireName: 'Num4')
  String? get num4;

  bool? get check;

  @BuiltValueField(wireName: 'User')
  DocumentReference? get user;

  BuiltList<PlaceStruct>? get dataplace;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(LevelRecordBuilder builder) => builder
    ..num1 = ''
    ..num2 = ''
    ..num3 = ''
    ..num4 = ''
    ..check = false
    ..dataplace = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Level')
          : FirebaseFirestore.instance.collectionGroup('Level');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Level').doc();

  static Stream<LevelRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LevelRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LevelRecord._();
  factory LevelRecord([void Function(LevelRecordBuilder) updates]) =
      _$LevelRecord;

  static LevelRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLevelRecordData({
  String? num1,
  String? num2,
  String? num3,
  String? num4,
  bool? check,
  DocumentReference? user,
}) {
  final firestoreData = serializers.toFirestore(
    LevelRecord.serializer,
    LevelRecord(
      (l) => l
        ..num1 = num1
        ..num2 = num2
        ..num3 = num3
        ..num4 = num4
        ..check = check
        ..user = user
        ..dataplace = null,
    ),
  );

  return firestoreData;
}
