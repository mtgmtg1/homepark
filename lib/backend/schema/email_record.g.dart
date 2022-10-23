// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmailRecord> _$emailRecordSerializer = new _$EmailRecordSerializer();

class _$EmailRecordSerializer implements StructuredSerializer<EmailRecord> {
  @override
  final Iterable<Type> types = const [EmailRecord, _$EmailRecord];
  @override
  final String wireName = 'EmailRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EmailRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sentnumber;
    if (value != null) {
      result
        ..add('sentnumber')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  EmailRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmailRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sentnumber':
          result.sentnumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$EmailRecord extends EmailRecord {
  @override
  final String? name;
  @override
  final int? sentnumber;
  @override
  final DocumentReference<Object?>? userref;
  @override
  final DocumentReference<Object?>? adminref;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EmailRecord([void Function(EmailRecordBuilder)? updates]) =>
      (new EmailRecordBuilder()..update(updates))._build();

  _$EmailRecord._(
      {this.name, this.sentnumber, this.userref, this.adminref, this.ffRef})
      : super._();

  @override
  EmailRecord rebuild(void Function(EmailRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailRecordBuilder toBuilder() => new EmailRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailRecord &&
        name == other.name &&
        sentnumber == other.sentnumber &&
        userref == other.userref &&
        adminref == other.adminref &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), sentnumber.hashCode),
                userref.hashCode),
            adminref.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmailRecord')
          ..add('name', name)
          ..add('sentnumber', sentnumber)
          ..add('userref', userref)
          ..add('adminref', adminref)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EmailRecordBuilder implements Builder<EmailRecord, EmailRecordBuilder> {
  _$EmailRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _sentnumber;
  int? get sentnumber => _$this._sentnumber;
  set sentnumber(int? sentnumber) => _$this._sentnumber = sentnumber;

  DocumentReference<Object?>? _userref;
  DocumentReference<Object?>? get userref => _$this._userref;
  set userref(DocumentReference<Object?>? userref) => _$this._userref = userref;

  DocumentReference<Object?>? _adminref;
  DocumentReference<Object?>? get adminref => _$this._adminref;
  set adminref(DocumentReference<Object?>? adminref) =>
      _$this._adminref = adminref;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EmailRecordBuilder() {
    EmailRecord._initializeBuilder(this);
  }

  EmailRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _sentnumber = $v.sentnumber;
      _userref = $v.userref;
      _adminref = $v.adminref;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmailRecord;
  }

  @override
  void update(void Function(EmailRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailRecord build() => _build();

  _$EmailRecord _build() {
    final _$result = _$v ??
        new _$EmailRecord._(
            name: name,
            sentnumber: sentnumber,
            userref: userref,
            adminref: adminref,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
