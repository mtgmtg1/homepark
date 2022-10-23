// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlaceStruct> _$placeStructSerializer = new _$PlaceStructSerializer();

class _$PlaceStructSerializer implements StructuredSerializer<PlaceStruct> {
  @override
  final Iterable<Type> types = const [PlaceStruct, _$PlaceStruct];
  @override
  final String wireName = 'PlaceStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlaceStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.placename;
    if (value != null) {
      result
        ..add('placename')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userref;
    if (value != null) {
      result
        ..add('userref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.placetype;
    if (value != null) {
      result
        ..add('placetype')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.detailplace;
    if (value != null) {
      result
        ..add('detailplace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.txt;
    if (value != null) {
      result
        ..add('txt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photolist;
    if (value != null) {
      result
        ..add('photolist')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.photo1;
    if (value != null) {
      result
        ..add('photo1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PlaceStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlaceStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'placename':
          result.placename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userref':
          result.userref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'placetype':
          result.placetype = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'detailplace':
          result.detailplace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'txt':
          result.txt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photolist':
          result.photolist.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'photo1':
          result.photo1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$PlaceStruct extends PlaceStruct {
  @override
  final String? placename;
  @override
  final DocumentReference<Object?>? userref;
  @override
  final String? placetype;
  @override
  final String? detailplace;
  @override
  final String? txt;
  @override
  final BuiltList<String>? photolist;
  @override
  final String? photo1;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$PlaceStruct([void Function(PlaceStructBuilder)? updates]) =>
      (new PlaceStructBuilder()..update(updates))._build();

  _$PlaceStruct._(
      {this.placename,
      this.userref,
      this.placetype,
      this.detailplace,
      this.txt,
      this.photolist,
      this.photo1,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'PlaceStruct', 'firestoreUtilData');
  }

  @override
  PlaceStruct rebuild(void Function(PlaceStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceStructBuilder toBuilder() => new PlaceStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceStruct &&
        placename == other.placename &&
        userref == other.userref &&
        placetype == other.placetype &&
        detailplace == other.detailplace &&
        txt == other.txt &&
        photolist == other.photolist &&
        photo1 == other.photo1 &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, placename.hashCode), userref.hashCode),
                            placetype.hashCode),
                        detailplace.hashCode),
                    txt.hashCode),
                photolist.hashCode),
            photo1.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceStruct')
          ..add('placename', placename)
          ..add('userref', userref)
          ..add('placetype', placetype)
          ..add('detailplace', detailplace)
          ..add('txt', txt)
          ..add('photolist', photolist)
          ..add('photo1', photo1)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class PlaceStructBuilder implements Builder<PlaceStruct, PlaceStructBuilder> {
  _$PlaceStruct? _$v;

  String? _placename;
  String? get placename => _$this._placename;
  set placename(String? placename) => _$this._placename = placename;

  DocumentReference<Object?>? _userref;
  DocumentReference<Object?>? get userref => _$this._userref;
  set userref(DocumentReference<Object?>? userref) => _$this._userref = userref;

  String? _placetype;
  String? get placetype => _$this._placetype;
  set placetype(String? placetype) => _$this._placetype = placetype;

  String? _detailplace;
  String? get detailplace => _$this._detailplace;
  set detailplace(String? detailplace) => _$this._detailplace = detailplace;

  String? _txt;
  String? get txt => _$this._txt;
  set txt(String? txt) => _$this._txt = txt;

  ListBuilder<String>? _photolist;
  ListBuilder<String> get photolist =>
      _$this._photolist ??= new ListBuilder<String>();
  set photolist(ListBuilder<String>? photolist) =>
      _$this._photolist = photolist;

  String? _photo1;
  String? get photo1 => _$this._photo1;
  set photo1(String? photo1) => _$this._photo1 = photo1;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  PlaceStructBuilder() {
    PlaceStruct._initializeBuilder(this);
  }

  PlaceStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placename = $v.placename;
      _userref = $v.userref;
      _placetype = $v.placetype;
      _detailplace = $v.detailplace;
      _txt = $v.txt;
      _photolist = $v.photolist?.toBuilder();
      _photo1 = $v.photo1;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlaceStruct;
  }

  @override
  void update(void Function(PlaceStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceStruct build() => _build();

  _$PlaceStruct _build() {
    _$PlaceStruct _$result;
    try {
      _$result = _$v ??
          new _$PlaceStruct._(
              placename: placename,
              userref: userref,
              placetype: placetype,
              detailplace: detailplace,
              txt: txt,
              photolist: _photolist?.build(),
              photo1: photo1,
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'PlaceStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'photolist';
        _photolist?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlaceStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
