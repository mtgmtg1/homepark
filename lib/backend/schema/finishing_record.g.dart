// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finishing_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FinishingRecord> _$finishingRecordSerializer =
    new _$FinishingRecordSerializer();

class _$FinishingRecordSerializer
    implements StructuredSerializer<FinishingRecord> {
  @override
  final Iterable<Type> types = const [FinishingRecord, _$FinishingRecord];
  @override
  final String wireName = 'FinishingRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FinishingRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
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
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dataplace;
    if (value != null) {
      result
        ..add('dataplace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PlaceStruct)])));
    }
    value = object.img2;
    if (value != null) {
      result
        ..add('img2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.placename;
    if (value != null) {
      result
        ..add('placename')
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
  FinishingRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FinishingRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
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
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dataplace':
          result.dataplace.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PlaceStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'img2':
          result.img2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'placename':
          result.placename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'detailplace':
          result.detailplace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$FinishingRecord extends FinishingRecord {
  @override
  final String? type;
  @override
  final String? img;
  @override
  final bool? check;
  @override
  final String? text;
  @override
  final String? username;
  @override
  final BuiltList<PlaceStruct>? dataplace;
  @override
  final String? img2;
  @override
  final String? placename;
  @override
  final String? detailplace;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FinishingRecord([void Function(FinishingRecordBuilder)? updates]) =>
      (new FinishingRecordBuilder()..update(updates))._build();

  _$FinishingRecord._(
      {this.type,
      this.img,
      this.check,
      this.text,
      this.username,
      this.dataplace,
      this.img2,
      this.placename,
      this.detailplace,
      this.ffRef})
      : super._();

  @override
  FinishingRecord rebuild(void Function(FinishingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FinishingRecordBuilder toBuilder() =>
      new FinishingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FinishingRecord &&
        type == other.type &&
        img == other.img &&
        check == other.check &&
        text == other.text &&
        username == other.username &&
        dataplace == other.dataplace &&
        img2 == other.img2 &&
        placename == other.placename &&
        detailplace == other.detailplace &&
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
                            $jc(
                                $jc($jc($jc(0, type.hashCode), img.hashCode),
                                    check.hashCode),
                                text.hashCode),
                            username.hashCode),
                        dataplace.hashCode),
                    img2.hashCode),
                placename.hashCode),
            detailplace.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FinishingRecord')
          ..add('type', type)
          ..add('img', img)
          ..add('check', check)
          ..add('text', text)
          ..add('username', username)
          ..add('dataplace', dataplace)
          ..add('img2', img2)
          ..add('placename', placename)
          ..add('detailplace', detailplace)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FinishingRecordBuilder
    implements Builder<FinishingRecord, FinishingRecordBuilder> {
  _$FinishingRecord? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  bool? _check;
  bool? get check => _$this._check;
  set check(bool? check) => _$this._check = check;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  ListBuilder<PlaceStruct>? _dataplace;
  ListBuilder<PlaceStruct> get dataplace =>
      _$this._dataplace ??= new ListBuilder<PlaceStruct>();
  set dataplace(ListBuilder<PlaceStruct>? dataplace) =>
      _$this._dataplace = dataplace;

  String? _img2;
  String? get img2 => _$this._img2;
  set img2(String? img2) => _$this._img2 = img2;

  String? _placename;
  String? get placename => _$this._placename;
  set placename(String? placename) => _$this._placename = placename;

  String? _detailplace;
  String? get detailplace => _$this._detailplace;
  set detailplace(String? detailplace) => _$this._detailplace = detailplace;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FinishingRecordBuilder() {
    FinishingRecord._initializeBuilder(this);
  }

  FinishingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _img = $v.img;
      _check = $v.check;
      _text = $v.text;
      _username = $v.username;
      _dataplace = $v.dataplace?.toBuilder();
      _img2 = $v.img2;
      _placename = $v.placename;
      _detailplace = $v.detailplace;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FinishingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FinishingRecord;
  }

  @override
  void update(void Function(FinishingRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FinishingRecord build() => _build();

  _$FinishingRecord _build() {
    _$FinishingRecord _$result;
    try {
      _$result = _$v ??
          new _$FinishingRecord._(
              type: type,
              img: img,
              check: check,
              text: text,
              username: username,
              dataplace: _dataplace?.build(),
              img2: img2,
              placename: placename,
              detailplace: detailplace,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dataplace';
        _dataplace?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FinishingRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
