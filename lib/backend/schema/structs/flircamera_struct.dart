import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'flircamera_struct.g.dart';

abstract class FlircameraStruct
    implements Built<FlircameraStruct, FlircameraStructBuilder> {
  static Serializer<FlircameraStruct> get serializer =>
      _$flircameraStructSerializer;

  bool? get mainroom;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(FlircameraStructBuilder builder) => builder
    ..mainroom = false
    ..firestoreUtilData = FirestoreUtilData();

  FlircameraStruct._();
  factory FlircameraStruct([void Function(FlircameraStructBuilder) updates]) =
      _$FlircameraStruct;
}

FlircameraStruct createFlircameraStruct({
  bool? mainroom,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FlircameraStruct(
      (f) => f
        ..mainroom = mainroom
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

FlircameraStruct? updateFlircameraStruct(
  FlircameraStruct? flircamera, {
  bool clearUnsetFields = true,
}) =>
    flircamera != null
        ? (flircamera.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addFlircameraStructData(
  Map<String, dynamic> firestoreData,
  FlircameraStruct? flircamera,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (flircamera == null) {
    return;
  }
  if (flircamera.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && flircamera.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final flircameraData = getFlircameraFirestoreData(flircamera, forFieldValue);
  final nestedData = flircameraData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = flircamera.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getFlircameraFirestoreData(
  FlircameraStruct? flircamera, [
  bool forFieldValue = false,
]) {
  if (flircamera == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(FlircameraStruct.serializer, flircamera);

  // Add any Firestore field values
  flircamera.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFlircameraListFirestoreData(
  List<FlircameraStruct>? flircameras,
) =>
    flircameras?.map((f) => getFlircameraFirestoreData(f, true)).toList() ?? [];
