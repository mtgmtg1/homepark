// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aircondition_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AirconditionRecord> _$airconditionRecordSerializer =
    new _$AirconditionRecordSerializer();

class _$AirconditionRecordSerializer
    implements StructuredSerializer<AirconditionRecord> {
  @override
  final Iterable<Type> types = const [AirconditionRecord, _$AirconditionRecord];
  @override
  final String wireName = 'AirconditionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AirconditionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tvoc1;
    if (value != null) {
      result
        ..add('TVOC1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('IMG')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.check;
    if (value != null) {
      result
        ..add('check')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('User')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.radon;
    if (value != null) {
      result
        ..add('radon')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.adminref;
    if (value != null) {
      result
        ..add('adminref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.hohc;
    if (value != null) {
      result
        ..add('HOHC')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.dataplace;
    if (value != null) {
      result
        ..add('dataplace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PlaceStruct)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AirconditionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AirconditionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'TVOC1':
          result.tvoc1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'IMG':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'check':
          result.check = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'User':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'radon':
          result.radon.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'adminref':
          result.adminref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'HOHC':
          result.hohc.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'dataplace':
          result.dataplace.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PlaceStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AirconditionRecord extends AirconditionRecord {
  @override
  final String? tvoc1;
  @override
  final String? img;
  @override
  final bool? check;
  @override
  final DocumentReference<Object?>? user;
  @override
  final BuiltList<double>? radon;
  @override
  final DocumentReference<Object?>? adminref;
  @override
  final BuiltList<String>? hohc;
  @override
  final BuiltList<PlaceStruct>? dataplace;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AirconditionRecord(
          [void Function(AirconditionRecordBuilder)? updates]) =>
      (new AirconditionRecordBuilder()..update(updates))._build();

  _$AirconditionRecord._(
      {this.tvoc1,
      this.img,
      this.check,
      this.user,
      this.radon,
      this.adminref,
      this.hohc,
      this.dataplace,
      this.ffRef})
      : super._();

  @override
  AirconditionRecord rebuild(
          void Function(AirconditionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AirconditionRecordBuilder toBuilder() =>
      new AirconditionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AirconditionRecord &&
        tvoc1 == other.tvoc1 &&
        img == other.img &&
        check == other.check &&
        user == other.user &&
        radon == other.radon &&
        adminref == other.adminref &&
        hohc == other.hohc &&
        dataplace == other.dataplace &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, tvoc1.hashCode), img.hashCode),
                                check.hashCode),
                            user.hashCode),
                        radon.hashCode),
                    adminref.hashCode),
                hohc.hashCode),
            dataplace.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AirconditionRecord')
          ..add('tvoc1', tvoc1)
          ..add('img', img)
          ..add('check', check)
          ..add('user', user)
          ..add('radon', radon)
          ..add('adminref', adminref)
          ..add('hohc', hohc)
          ..add('dataplace', dataplace)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AirconditionRecordBuilder
    implements Builder<AirconditionRecord, AirconditionRecordBuilder> {
  _$AirconditionRecord? _$v;

  String? _tvoc1;
  String? get tvoc1 => _$this._tvoc1;
  set tvoc1(String? tvoc1) => _$this._tvoc1 = tvoc1;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  bool? _check;
  bool? get check => _$this._check;
  set check(bool? check) => _$this._check = check;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  ListBuilder<double>? _radon;
  ListBuilder<double> get radon => _$this._radon ??= new ListBuilder<double>();
  set radon(ListBuilder<double>? radon) => _$this._radon = radon;

  DocumentReference<Object?>? _adminref;
  DocumentReference<Object?>? get adminref => _$this._adminref;
  set adminref(DocumentReference<Object?>? adminref) =>
      _$this._adminref = adminref;

  ListBuilder<String>? _hohc;
  ListBuilder<String> get hohc => _$this._hohc ??= new ListBuilder<String>();
  set hohc(ListBuilder<String>? hohc) => _$this._hohc = hohc;

  ListBuilder<PlaceStruct>? _dataplace;
  ListBuilder<PlaceStruct> get dataplace =>
      _$this._dataplace ??= new ListBuilder<PlaceStruct>();
  set dataplace(ListBuilder<PlaceStruct>? dataplace) =>
      _$this._dataplace = dataplace;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AirconditionRecordBuilder() {
    AirconditionRecord._initializeBuilder(this);
  }

  AirconditionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tvoc1 = $v.tvoc1;
      _img = $v.img;
      _check = $v.check;
      _user = $v.user;
      _radon = $v.radon?.toBuilder();
      _adminref = $v.adminref;
      _hohc = $v.hohc?.toBuilder();
      _dataplace = $v.dataplace?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AirconditionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AirconditionRecord;
  }

  @override
  void update(void Function(AirconditionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AirconditionRecord build() => _build();

  _$AirconditionRecord _build() {
    _$AirconditionRecord _$result;
    try {
      _$result = _$v ??
          new _$AirconditionRecord._(
              tvoc1: tvoc1,
              img: img,
              check: check,
              user: user,
              radon: _radon?.build(),
              adminref: adminref,
              hohc: _hohc?.build(),
              dataplace: _dataplace?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'radon';
        _radon?.build();

        _$failedField = 'hohc';
        _hohc?.build();
        _$failedField = 'dataplace';
        _dataplace?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AirconditionRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
