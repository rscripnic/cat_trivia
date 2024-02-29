// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../cat_fact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatFact _$CatFactFromJson(Map<String, dynamic> json) {
  return _CatFact.fromJson(json);
}

/// @nodoc
mixin _$CatFact {
  CatFactStatus? get status => throw _privateConstructorUsedError;
  set status(CatFactStatus? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  set id(String? value) => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  set user(String? value) => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  set text(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  set v(int? value) => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  set source(String? value) => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  set updatedAt(String? value) => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  set type(String? value) => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  set createdAt(String? value) => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;
  set deleted(bool? value) => throw _privateConstructorUsedError;
  bool? get used => throw _privateConstructorUsedError;
  set used(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatFactCopyWith<CatFact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatFactCopyWith<$Res> {
  factory $CatFactCopyWith(CatFact value, $Res Function(CatFact) then) =
      _$CatFactCopyWithImpl<$Res, CatFact>;
  @useResult
  $Res call(
      {CatFactStatus? status,
      @JsonKey(name: "_id") String? id,
      String? user,
      String? text,
      @JsonKey(name: "__v") int? v,
      String? source,
      String? updatedAt,
      String? type,
      String? createdAt,
      bool? deleted,
      bool? used});

  $CatFactStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$CatFactCopyWithImpl<$Res, $Val extends CatFact>
    implements $CatFactCopyWith<$Res> {
  _$CatFactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? user = freezed,
    Object? text = freezed,
    Object? v = freezed,
    Object? source = freezed,
    Object? updatedAt = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? deleted = freezed,
    Object? used = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CatFactStatus?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      used: freezed == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CatFactStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $CatFactStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CatFactImplCopyWith<$Res> implements $CatFactCopyWith<$Res> {
  factory _$$CatFactImplCopyWith(
          _$CatFactImpl value, $Res Function(_$CatFactImpl) then) =
      __$$CatFactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CatFactStatus? status,
      @JsonKey(name: "_id") String? id,
      String? user,
      String? text,
      @JsonKey(name: "__v") int? v,
      String? source,
      String? updatedAt,
      String? type,
      String? createdAt,
      bool? deleted,
      bool? used});

  @override
  $CatFactStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$CatFactImplCopyWithImpl<$Res>
    extends _$CatFactCopyWithImpl<$Res, _$CatFactImpl>
    implements _$$CatFactImplCopyWith<$Res> {
  __$$CatFactImplCopyWithImpl(
      _$CatFactImpl _value, $Res Function(_$CatFactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? user = freezed,
    Object? text = freezed,
    Object? v = freezed,
    Object? source = freezed,
    Object? updatedAt = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? deleted = freezed,
    Object? used = freezed,
  }) {
    return _then(_$CatFactImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CatFactStatus?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      used: freezed == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatFactImpl implements _CatFact {
  _$CatFactImpl(
      {this.status,
      @JsonKey(name: "_id") this.id,
      this.user,
      this.text,
      @JsonKey(name: "__v") this.v,
      this.source,
      this.updatedAt,
      this.type,
      this.createdAt,
      this.deleted,
      this.used});

  factory _$CatFactImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatFactImplFromJson(json);

  @override
  CatFactStatus? status;
  @override
  @JsonKey(name: "_id")
  String? id;
  @override
  String? user;
  @override
  String? text;
  @override
  @JsonKey(name: "__v")
  int? v;
  @override
  String? source;
  @override
  String? updatedAt;
  @override
  String? type;
  @override
  String? createdAt;
  @override
  bool? deleted;
  @override
  bool? used;

  @override
  String toString() {
    return 'CatFact(status: $status, id: $id, user: $user, text: $text, v: $v, source: $source, updatedAt: $updatedAt, type: $type, createdAt: $createdAt, deleted: $deleted, used: $used)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatFactImplCopyWith<_$CatFactImpl> get copyWith =>
      __$$CatFactImplCopyWithImpl<_$CatFactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatFactImplToJson(
      this,
    );
  }
}

abstract class _CatFact implements CatFact {
  factory _CatFact(
      {CatFactStatus? status,
      @JsonKey(name: "_id") String? id,
      String? user,
      String? text,
      @JsonKey(name: "__v") int? v,
      String? source,
      String? updatedAt,
      String? type,
      String? createdAt,
      bool? deleted,
      bool? used}) = _$CatFactImpl;

  factory _CatFact.fromJson(Map<String, dynamic> json) = _$CatFactImpl.fromJson;

  @override
  CatFactStatus? get status;
  set status(CatFactStatus? value);
  @override
  @JsonKey(name: "_id")
  String? get id;
  @JsonKey(name: "_id")
  set id(String? value);
  @override
  String? get user;
  set user(String? value);
  @override
  String? get text;
  set text(String? value);
  @override
  @JsonKey(name: "__v")
  int? get v;
  @JsonKey(name: "__v")
  set v(int? value);
  @override
  String? get source;
  set source(String? value);
  @override
  String? get updatedAt;
  set updatedAt(String? value);
  @override
  String? get type;
  set type(String? value);
  @override
  String? get createdAt;
  set createdAt(String? value);
  @override
  bool? get deleted;
  set deleted(bool? value);
  @override
  bool? get used;
  set used(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$CatFactImplCopyWith<_$CatFactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
