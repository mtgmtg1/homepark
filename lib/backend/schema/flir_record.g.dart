// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flir_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FlirRecord> _$flirRecordSerializer = new _$FlirRecordSerializer();

class _$FlirRecordSerializer implements StructuredSerializer<FlirRecord> {
  @override
  final Iterable<Type> types = const [FlirRecord, _$FlirRecord];
  @override
  final String wireName = 'FlirRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FlirRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.flirname;
    if (value != null) {
      result
        ..add('flirname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createtime;
    if (value != null) {
      result
        ..add('createtime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.userref;
    if (value != null) {
      result
        ..add('userref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.adminref;
    if (value != null) {
      result
        ..add('adminref')
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
  FlirRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FlirRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'flirname':
          result.flirname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createtime':
          result.createtime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'userref':
          result.userref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'adminref':
          result.adminref = serializers.deserialize(value,
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

class _$FlirRecord extends FlirRecord {
  @override
  final String? flirname;
  @override
  final DateTime? createtime;
  @override
  final DocumentReference<Object?>? userref;
  @override
  final DocumentReference<Object?>? adminref;
  @override
  final BuiltList<PlaceStruct>? dataplace;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FlirRecord([void Function(FlirRecordBuilder)? updates]) =>
      (new FlirRecordBuilder()..update(updates))._build();

  _$FlirRecord._(
      {this.flirname,
      this.createtime,
      this.userref,
      this.adminref,
      this.dataplace,
      this.ffRef})
      : super._();

  @override
  FlirRecord rebuild(void Function(FlirRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlirRecordBuilder toBuilder() => new FlirRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlirRecord &&
        flirname == other.flirname &&
        createtime == other.createtime &&
        userref == other.userref &&
        adminref == other.adminref &&
        dataplace == other.dataplace &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, flirname.hashCode), createtime.hashCode),
                    userref.hashCode),
                adminref.hashCode),
            dataplace.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlirRecord')
          ..add('flirname', flirname)
          ..add('createtime', createtime)
          ..add('userref', userref)
          ..add('adminref', adminref)
          ..add('dataplace', dataplace)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FlirRecordBuilder implements Builder<FlirRecord, FlirRecordBuilder> {
  _$FlirRecord? _$v;

  String? _flirname;
  String? get flirname => _$this._flirname;
  set flirname(String? flirname) => _$this._flirname = flirname;

  DateTime? _createtime;
  DateTime? get createtime => _$this._createtime;
  set createtime(DateTime? createtime) => _$this._createtime = createtime;

  DocumentReference<Object?>? _userref;
  DocumentReference<Object?>? get userref => _$this._userref;
  set userref(DocumentReference<Object?>? userref) => _$this._userref = userref;

  DocumentReference<Object?>? _adminref;
  DocumentReference<Object?>? get adminref => _$this._adminref;
  set adminref(DocumentReference<Object?>? adminref) =>
      _$this._adminref = adminref;

  ListBuilder<PlaceStruct>? _dataplace;
  ListBuilder<PlaceStruct> get dataplace =>
      _$this._dataplace ??= new ListBuilder<PlaceStruct>();
  set dataplace(ListBuilder<PlaceStruct>? dataplace) =>
      _$this._dataplace = dataplace;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FlirRecordBuilder() {
    FlirRecord._initializeBuilder(this);
  }

  FlirRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _flirname = $v.flirname;
      _createtime = $v.createtime;
      _userref = $v.userref;
      _adminref = $v.adminref;
      _dataplace = $v.dataplace?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlirRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlirRecord;
  }

  @override
  void update(void Function(FlirRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlirRecord build() => _build();

  _$FlirRecord _build() {
    _$FlirRecord _$result;
    try {
      _$result = _$v ??
          new _$FlirRecord._(
              flirname: flirname,
              createtime: createtime,
              userref: userref,
              adminref: adminref,
              dataplace: _dataplace?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dataplace';
        _dataplace?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FlirRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
