// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flircamera_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FlircameraStruct> _$flircameraStructSerializer =
    new _$FlircameraStructSerializer();

class _$FlircameraStructSerializer
    implements StructuredSerializer<FlircameraStruct> {
  @override
  final Iterable<Type> types = const [FlircameraStruct, _$FlircameraStruct];
  @override
  final String wireName = 'FlircameraStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, FlircameraStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.mainroom;
    if (value != null) {
      result
        ..add('mainroom')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  FlircameraStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FlircameraStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mainroom':
          result.mainroom = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$FlircameraStruct extends FlircameraStruct {
  @override
  final bool? mainroom;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$FlircameraStruct(
          [void Function(FlircameraStructBuilder)? updates]) =>
      (new FlircameraStructBuilder()..update(updates))._build();

  _$FlircameraStruct._({this.mainroom, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'FlircameraStruct', 'firestoreUtilData');
  }

  @override
  FlircameraStruct rebuild(void Function(FlircameraStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlircameraStructBuilder toBuilder() =>
      new FlircameraStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlircameraStruct &&
        mainroom == other.mainroom &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, mainroom.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlircameraStruct')
          ..add('mainroom', mainroom)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class FlircameraStructBuilder
    implements Builder<FlircameraStruct, FlircameraStructBuilder> {
  _$FlircameraStruct? _$v;

  bool? _mainroom;
  bool? get mainroom => _$this._mainroom;
  set mainroom(bool? mainroom) => _$this._mainroom = mainroom;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  FlircameraStructBuilder() {
    FlircameraStruct._initializeBuilder(this);
  }

  FlircameraStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mainroom = $v.mainroom;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlircameraStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlircameraStruct;
  }

  @override
  void update(void Function(FlircameraStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlircameraStruct build() => _build();

  _$FlircameraStruct _build() {
    final _$result = _$v ??
        new _$FlircameraStruct._(
            mainroom: mainroom,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'FlircameraStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
