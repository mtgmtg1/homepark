// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_detail_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CheckDetailRecord> _$checkDetailRecordSerializer =
    new _$CheckDetailRecordSerializer();

class _$CheckDetailRecordSerializer
    implements StructuredSerializer<CheckDetailRecord> {
  @override
  final Iterable<Type> types = const [CheckDetailRecord, _$CheckDetailRecord];
  @override
  final String wireName = 'CheckDetailRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CheckDetailRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.teamleader;
    if (value != null) {
      result
        ..add('Teamleader')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.equipmentNum;
    if (value != null) {
      result
        ..add('Equipment_Num')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.topManager;
    if (value != null) {
      result
        ..add('Top_Manager')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.manager;
    if (value != null) {
      result
        ..add('Manager')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.managerEmail;
    if (value != null) {
      result
        ..add('manager_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('User')
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
  CheckDetailRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckDetailRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Teamleader':
          result.teamleader = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Equipment_Num':
          result.equipmentNum = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Top_Manager':
          result.topManager = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Manager':
          result.manager = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'manager_email':
          result.managerEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'User':
          result.user = serializers.deserialize(value,
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

class _$CheckDetailRecord extends CheckDetailRecord {
  @override
  final String? teamleader;
  @override
  final String? equipmentNum;
  @override
  final String? topManager;
  @override
  final String? manager;
  @override
  final String? managerEmail;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DocumentReference<Object?>? adminref;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CheckDetailRecord(
          [void Function(CheckDetailRecordBuilder)? updates]) =>
      (new CheckDetailRecordBuilder()..update(updates))._build();

  _$CheckDetailRecord._(
      {this.teamleader,
      this.equipmentNum,
      this.topManager,
      this.manager,
      this.managerEmail,
      this.user,
      this.adminref,
      this.ffRef})
      : super._();

  @override
  CheckDetailRecord rebuild(void Function(CheckDetailRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckDetailRecordBuilder toBuilder() =>
      new CheckDetailRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckDetailRecord &&
        teamleader == other.teamleader &&
        equipmentNum == other.equipmentNum &&
        topManager == other.topManager &&
        manager == other.manager &&
        managerEmail == other.managerEmail &&
        user == other.user &&
        adminref == other.adminref &&
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
                            $jc($jc(0, teamleader.hashCode),
                                equipmentNum.hashCode),
                            topManager.hashCode),
                        manager.hashCode),
                    managerEmail.hashCode),
                user.hashCode),
            adminref.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckDetailRecord')
          ..add('teamleader', teamleader)
          ..add('equipmentNum', equipmentNum)
          ..add('topManager', topManager)
          ..add('manager', manager)
          ..add('managerEmail', managerEmail)
          ..add('user', user)
          ..add('adminref', adminref)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CheckDetailRecordBuilder
    implements Builder<CheckDetailRecord, CheckDetailRecordBuilder> {
  _$CheckDetailRecord? _$v;

  String? _teamleader;
  String? get teamleader => _$this._teamleader;
  set teamleader(String? teamleader) => _$this._teamleader = teamleader;

  String? _equipmentNum;
  String? get equipmentNum => _$this._equipmentNum;
  set equipmentNum(String? equipmentNum) => _$this._equipmentNum = equipmentNum;

  String? _topManager;
  String? get topManager => _$this._topManager;
  set topManager(String? topManager) => _$this._topManager = topManager;

  String? _manager;
  String? get manager => _$this._manager;
  set manager(String? manager) => _$this._manager = manager;

  String? _managerEmail;
  String? get managerEmail => _$this._managerEmail;
  set managerEmail(String? managerEmail) => _$this._managerEmail = managerEmail;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DocumentReference<Object?>? _adminref;
  DocumentReference<Object?>? get adminref => _$this._adminref;
  set adminref(DocumentReference<Object?>? adminref) =>
      _$this._adminref = adminref;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CheckDetailRecordBuilder() {
    CheckDetailRecord._initializeBuilder(this);
  }

  CheckDetailRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _teamleader = $v.teamleader;
      _equipmentNum = $v.equipmentNum;
      _topManager = $v.topManager;
      _manager = $v.manager;
      _managerEmail = $v.managerEmail;
      _user = $v.user;
      _adminref = $v.adminref;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckDetailRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckDetailRecord;
  }

  @override
  void update(void Function(CheckDetailRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckDetailRecord build() => _build();

  _$CheckDetailRecord _build() {
    final _$result = _$v ??
        new _$CheckDetailRecord._(
            teamleader: teamleader,
            equipmentNum: equipmentNum,
            topManager: topManager,
            manager: manager,
            managerEmail: managerEmail,
            user: user,
            adminref: adminref,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
