// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserRecord> _$userRecordSerializer = new _$UserRecordSerializer();

class _$UserRecordSerializer implements StructuredSerializer<UserRecord> {
  @override
  final Iterable<Type> types = const [UserRecord, _$UserRecord];
  @override
  final String wireName = 'UserRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('Address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressDetail;
    if (value != null) {
      result
        ..add('Address_detail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.check;
    if (value != null) {
      result
        ..add('Check')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.etc;
    if (value != null) {
      result
        ..add('ETC')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checkColor;
    if (value != null) {
      result
        ..add('checkColor')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.checkTXT;
    if (value != null) {
      result
        ..add('checkTXT')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.select;
    if (value != null) {
      result
        ..add('select')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.selectTXT;
    if (value != null) {
      result
        ..add('selectTXT')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.selectColor;
    if (value != null) {
      result
        ..add('SelectColor')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.adminRef;
    if (value != null) {
      result
        ..add('adminRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.starttime;
    if (value != null) {
      result
        ..add('starttime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endtime;
    if (value != null) {
      result
        ..add('endtime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.finishnum;
    if (value != null) {
      result
        ..add('finishnum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.levelnum;
    if (value != null) {
      result
        ..add('levelnum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.airconditionnum;
    if (value != null) {
      result
        ..add('airconditionnum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tinum;
    if (value != null) {
      result
        ..add('tinum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.positionnum;
    if (value != null) {
      result
        ..add('positionnum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.checkdate;
    if (value != null) {
      result
        ..add('checkdate')
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
  UserRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Address_detail':
          result.addressDetail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Check':
          result.check = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'ETC':
          result.etc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checkColor':
          result.checkColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'checkTXT':
          result.checkTXT = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'select':
          result.select = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'selectTXT':
          result.selectTXT = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'SelectColor':
          result.selectColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'adminRef':
          result.adminRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'starttime':
          result.starttime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endtime':
          result.endtime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'finishnum':
          result.finishnum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'levelnum':
          result.levelnum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'airconditionnum':
          result.airconditionnum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tinum':
          result.tinum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'positionnum':
          result.positionnum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'checkdate':
          result.checkdate = serializers.deserialize(value,
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

class _$UserRecord extends UserRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? address;
  @override
  final String? addressDetail;
  @override
  final bool? check;
  @override
  final String? etc;
  @override
  final String? photoUrl;
  @override
  final Color? checkColor;
  @override
  final String? checkTXT;
  @override
  final bool? select;
  @override
  final String? selectTXT;
  @override
  final Color? selectColor;
  @override
  final DocumentReference<Object?>? adminRef;
  @override
  final String? starttime;
  @override
  final String? endtime;
  @override
  final int? finishnum;
  @override
  final int? levelnum;
  @override
  final int? airconditionnum;
  @override
  final int? tinum;
  @override
  final int? positionnum;
  @override
  final String? checkdate;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserRecord([void Function(UserRecordBuilder)? updates]) =>
      (new UserRecordBuilder()..update(updates))._build();

  _$UserRecord._(
      {this.email,
      this.displayName,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.address,
      this.addressDetail,
      this.check,
      this.etc,
      this.photoUrl,
      this.checkColor,
      this.checkTXT,
      this.select,
      this.selectTXT,
      this.selectColor,
      this.adminRef,
      this.starttime,
      this.endtime,
      this.finishnum,
      this.levelnum,
      this.airconditionnum,
      this.tinum,
      this.positionnum,
      this.checkdate,
      this.ffRef})
      : super._();

  @override
  UserRecord rebuild(void Function(UserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRecordBuilder toBuilder() => new UserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRecord &&
        email == other.email &&
        displayName == other.displayName &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        address == other.address &&
        addressDetail == other.addressDetail &&
        check == other.check &&
        etc == other.etc &&
        photoUrl == other.photoUrl &&
        checkColor == other.checkColor &&
        checkTXT == other.checkTXT &&
        select == other.select &&
        selectTXT == other.selectTXT &&
        selectColor == other.selectColor &&
        adminRef == other.adminRef &&
        starttime == other.starttime &&
        endtime == other.endtime &&
        finishnum == other.finishnum &&
        levelnum == other.levelnum &&
        airconditionnum == other.airconditionnum &&
        tinum == other.tinum &&
        positionnum == other.positionnum &&
        checkdate == other.checkdate &&
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc(0, email.hashCode), displayName.hashCode), uid.hashCode), createdTime.hashCode), phoneNumber.hashCode), address.hashCode),
                                                                                addressDetail.hashCode),
                                                                            check.hashCode),
                                                                        etc.hashCode),
                                                                    photoUrl.hashCode),
                                                                checkColor.hashCode),
                                                            checkTXT.hashCode),
                                                        select.hashCode),
                                                    selectTXT.hashCode),
                                                selectColor.hashCode),
                                            adminRef.hashCode),
                                        starttime.hashCode),
                                    endtime.hashCode),
                                finishnum.hashCode),
                            levelnum.hashCode),
                        airconditionnum.hashCode),
                    tinum.hashCode),
                positionnum.hashCode),
            checkdate.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('address', address)
          ..add('addressDetail', addressDetail)
          ..add('check', check)
          ..add('etc', etc)
          ..add('photoUrl', photoUrl)
          ..add('checkColor', checkColor)
          ..add('checkTXT', checkTXT)
          ..add('select', select)
          ..add('selectTXT', selectTXT)
          ..add('selectColor', selectColor)
          ..add('adminRef', adminRef)
          ..add('starttime', starttime)
          ..add('endtime', endtime)
          ..add('finishnum', finishnum)
          ..add('levelnum', levelnum)
          ..add('airconditionnum', airconditionnum)
          ..add('tinum', tinum)
          ..add('positionnum', positionnum)
          ..add('checkdate', checkdate)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserRecordBuilder implements Builder<UserRecord, UserRecordBuilder> {
  _$UserRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _addressDetail;
  String? get addressDetail => _$this._addressDetail;
  set addressDetail(String? addressDetail) =>
      _$this._addressDetail = addressDetail;

  bool? _check;
  bool? get check => _$this._check;
  set check(bool? check) => _$this._check = check;

  String? _etc;
  String? get etc => _$this._etc;
  set etc(String? etc) => _$this._etc = etc;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  Color? _checkColor;
  Color? get checkColor => _$this._checkColor;
  set checkColor(Color? checkColor) => _$this._checkColor = checkColor;

  String? _checkTXT;
  String? get checkTXT => _$this._checkTXT;
  set checkTXT(String? checkTXT) => _$this._checkTXT = checkTXT;

  bool? _select;
  bool? get select => _$this._select;
  set select(bool? select) => _$this._select = select;

  String? _selectTXT;
  String? get selectTXT => _$this._selectTXT;
  set selectTXT(String? selectTXT) => _$this._selectTXT = selectTXT;

  Color? _selectColor;
  Color? get selectColor => _$this._selectColor;
  set selectColor(Color? selectColor) => _$this._selectColor = selectColor;

  DocumentReference<Object?>? _adminRef;
  DocumentReference<Object?>? get adminRef => _$this._adminRef;
  set adminRef(DocumentReference<Object?>? adminRef) =>
      _$this._adminRef = adminRef;

  String? _starttime;
  String? get starttime => _$this._starttime;
  set starttime(String? starttime) => _$this._starttime = starttime;

  String? _endtime;
  String? get endtime => _$this._endtime;
  set endtime(String? endtime) => _$this._endtime = endtime;

  int? _finishnum;
  int? get finishnum => _$this._finishnum;
  set finishnum(int? finishnum) => _$this._finishnum = finishnum;

  int? _levelnum;
  int? get levelnum => _$this._levelnum;
  set levelnum(int? levelnum) => _$this._levelnum = levelnum;

  int? _airconditionnum;
  int? get airconditionnum => _$this._airconditionnum;
  set airconditionnum(int? airconditionnum) =>
      _$this._airconditionnum = airconditionnum;

  int? _tinum;
  int? get tinum => _$this._tinum;
  set tinum(int? tinum) => _$this._tinum = tinum;

  int? _positionnum;
  int? get positionnum => _$this._positionnum;
  set positionnum(int? positionnum) => _$this._positionnum = positionnum;

  String? _checkdate;
  String? get checkdate => _$this._checkdate;
  set checkdate(String? checkdate) => _$this._checkdate = checkdate;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserRecordBuilder() {
    UserRecord._initializeBuilder(this);
  }

  UserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _address = $v.address;
      _addressDetail = $v.addressDetail;
      _check = $v.check;
      _etc = $v.etc;
      _photoUrl = $v.photoUrl;
      _checkColor = $v.checkColor;
      _checkTXT = $v.checkTXT;
      _select = $v.select;
      _selectTXT = $v.selectTXT;
      _selectColor = $v.selectColor;
      _adminRef = $v.adminRef;
      _starttime = $v.starttime;
      _endtime = $v.endtime;
      _finishnum = $v.finishnum;
      _levelnum = $v.levelnum;
      _airconditionnum = $v.airconditionnum;
      _tinum = $v.tinum;
      _positionnum = $v.positionnum;
      _checkdate = $v.checkdate;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRecord;
  }

  @override
  void update(void Function(UserRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRecord build() => _build();

  _$UserRecord _build() {
    final _$result = _$v ??
        new _$UserRecord._(
            email: email,
            displayName: displayName,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            address: address,
            addressDetail: addressDetail,
            check: check,
            etc: etc,
            photoUrl: photoUrl,
            checkColor: checkColor,
            checkTXT: checkTXT,
            select: select,
            selectTXT: selectTXT,
            selectColor: selectColor,
            adminRef: adminRef,
            starttime: starttime,
            endtime: endtime,
            finishnum: finishnum,
            levelnum: levelnum,
            airconditionnum: airconditionnum,
            tinum: tinum,
            positionnum: positionnum,
            checkdate: checkdate,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
