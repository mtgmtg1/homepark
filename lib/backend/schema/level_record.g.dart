// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LevelRecord> _$levelRecordSerializer = new _$LevelRecordSerializer();

class _$LevelRecordSerializer implements StructuredSerializer<LevelRecord> {
  @override
  final Iterable<Type> types = const [LevelRecord, _$LevelRecord];
  @override
  final String wireName = 'LevelRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LevelRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.num1;
    if (value != null) {
      result
        ..add('Num1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.num2;
    if (value != null) {
      result
        ..add('Num2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.num3;
    if (value != null) {
      result
        ..add('Num3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.num4;
    if (value != null) {
      result
        ..add('Num4')
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
  LevelRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LevelRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Num1':
          result.num1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Num2':
          result.num2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Num3':
          result.num3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Num4':
          result.num4 = serializers.deserialize(value,
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

class _$LevelRecord extends LevelRecord {
  @override
  final String? num1;
  @override
  final String? num2;
  @override
  final String? num3;
  @override
  final String? num4;
  @override
  final bool? check;
  @override
  final DocumentReference<Object?>? user;
  @override
  final BuiltList<PlaceStruct>? dataplace;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LevelRecord([void Function(LevelRecordBuilder)? updates]) =>
      (new LevelRecordBuilder()..update(updates))._build();

  _$LevelRecord._(
      {this.num1,
      this.num2,
      this.num3,
      this.num4,
      this.check,
      this.user,
      this.dataplace,
      this.ffRef})
      : super._();

  @override
  LevelRecord rebuild(void Function(LevelRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LevelRecordBuilder toBuilder() => new LevelRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LevelRecord &&
        num1 == other.num1 &&
        num2 == other.num2 &&
        num3 == other.num3 &&
        num4 == other.num4 &&
        check == other.check &&
        user == other.user &&
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
                        $jc($jc($jc(0, num1.hashCode), num2.hashCode),
                            num3.hashCode),
                        num4.hashCode),
                    check.hashCode),
                user.hashCode),
            dataplace.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LevelRecord')
          ..add('num1', num1)
          ..add('num2', num2)
          ..add('num3', num3)
          ..add('num4', num4)
          ..add('check', check)
          ..add('user', user)
          ..add('dataplace', dataplace)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LevelRecordBuilder implements Builder<LevelRecord, LevelRecordBuilder> {
  _$LevelRecord? _$v;

  String? _num1;
  String? get num1 => _$this._num1;
  set num1(String? num1) => _$this._num1 = num1;

  String? _num2;
  String? get num2 => _$this._num2;
  set num2(String? num2) => _$this._num2 = num2;

  String? _num3;
  String? get num3 => _$this._num3;
  set num3(String? num3) => _$this._num3 = num3;

  String? _num4;
  String? get num4 => _$this._num4;
  set num4(String? num4) => _$this._num4 = num4;

  bool? _check;
  bool? get check => _$this._check;
  set check(bool? check) => _$this._check = check;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  ListBuilder<PlaceStruct>? _dataplace;
  ListBuilder<PlaceStruct> get dataplace =>
      _$this._dataplace ??= new ListBuilder<PlaceStruct>();
  set dataplace(ListBuilder<PlaceStruct>? dataplace) =>
      _$this._dataplace = dataplace;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LevelRecordBuilder() {
    LevelRecord._initializeBuilder(this);
  }

  LevelRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _num1 = $v.num1;
      _num2 = $v.num2;
      _num3 = $v.num3;
      _num4 = $v.num4;
      _check = $v.check;
      _user = $v.user;
      _dataplace = $v.dataplace?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LevelRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LevelRecord;
  }

  @override
  void update(void Function(LevelRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LevelRecord build() => _build();

  _$LevelRecord _build() {
    _$LevelRecord _$result;
    try {
      _$result = _$v ??
          new _$LevelRecord._(
              num1: num1,
              num2: num2,
              num3: num3,
              num4: num4,
              check: check,
              user: user,
              dataplace: _dataplace?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dataplace';
        _dataplace?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LevelRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
