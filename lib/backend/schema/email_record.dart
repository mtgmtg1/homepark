import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'email_record.g.dart';

abstract class EmailRecord implements Built<EmailRecord, EmailRecordBuilder> {
  static Serializer<EmailRecord> get serializer => _$emailRecordSerializer;

  String? get name;

  int? get sentnumber;

  DocumentReference? get userref;

  DocumentReference? get adminref;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EmailRecordBuilder builder) => builder
    ..name = ''
    ..sentnumber = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('email');

  static Stream<EmailRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EmailRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EmailRecord._();
  factory EmailRecord([void Function(EmailRecordBuilder) updates]) =
      _$EmailRecord;

  static EmailRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEmailRecordData({
  String? name,
  int? sentnumber,
  DocumentReference? userref,
  DocumentReference? adminref,
}) {
  final firestoreData = serializers.toFirestore(
    EmailRecord.serializer,
    EmailRecord(
      (e) => e
        ..name = name
        ..sentnumber = sentnumber
        ..userref = userref
        ..adminref = adminref,
    ),
  );

  return firestoreData;
}
