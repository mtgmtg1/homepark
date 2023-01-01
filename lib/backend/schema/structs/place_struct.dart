import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'place_struct.g.dart';

abstract class PlaceStruct implements Built<PlaceStruct, PlaceStructBuilder> {
  static Serializer<PlaceStruct> get serializer => _$placeStructSerializer;

  String? get placename;

  DocumentReference? get userref;

  String? get placetype;

  String? get detailplace;

  String? get txt;

  BuiltList<String>? get photolist;

  String? get photo1;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(PlaceStructBuilder builder) => builder
    ..placename = ''
    ..placetype = ''
    ..detailplace = ''
    ..txt = ''
    ..photolist = ListBuilder()
    ..photo1 = ''
    ..firestoreUtilData = FirestoreUtilData();

  PlaceStruct._();
  factory PlaceStruct([void Function(PlaceStructBuilder) updates]) =
      _$PlaceStruct;
}

PlaceStruct createPlaceStruct({
  String? placename,
  DocumentReference? userref,
  String? placetype,
  String? detailplace,
  String? txt,
  String? photo1,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlaceStruct(
      (p) => p
        ..placename = placename
        ..userref = userref
        ..placetype = placetype
        ..detailplace = detailplace
        ..txt = txt
        ..photolist = null
        ..photo1 = photo1
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

PlaceStruct? updatePlaceStruct(
  PlaceStruct? place, {
  bool clearUnsetFields = true,
}) =>
    place != null
        ? (place.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addPlaceStructData(
  Map<String, dynamic> firestoreData,
  PlaceStruct? place,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (place == null) {
    return;
  }
  if (place.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && place.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final placeData = getPlaceFirestoreData(place, forFieldValue);
  final nestedData = placeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = place.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getPlaceFirestoreData(
  PlaceStruct? place, [
  bool forFieldValue = false,
]) {
  if (place == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(PlaceStruct.serializer, place);

  // Add any Firestore field values
  place.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlaceListFirestoreData(
  List<PlaceStruct>? places,
) =>
    places?.map((p) => getPlaceFirestoreData(p, true)).toList() ?? [];
