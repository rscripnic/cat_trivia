// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../cat_fact_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatFactStatus _$CatFactStatusFromJson(Map<String, dynamic> json) {
  return _CatFactStatus.fromJson(json);
}

/// @nodoc
mixin _$CatFactStatus {
  bool? get verified => throw _privateConstructorUsedError;
  set verified(bool? value) => throw _privateConstructorUsedError;
  int? get sentCount => throw _privateConstructorUsedError;
  set sentCount(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatFactStatusCopyWith<CatFactStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatFactStatusCopyWith<$Res> {
  factory $CatFactStatusCopyWith(
          CatFactStatus value, $Res Function(CatFactStatus) then) =
      _$CatFactStatusCopyWithImpl<$Res, CatFactStatus>;
  @useResult
  $Res call({bool? verified, int? sentCount});
}

/// @nodoc
class _$CatFactStatusCopyWithImpl<$Res, $Val extends CatFactStatus>
    implements $CatFactStatusCopyWith<$Res> {
  _$CatFactStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verified = freezed,
    Object? sentCount = freezed,
  }) {
    return _then(_value.copyWith(
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      sentCount: freezed == sentCount
          ? _value.sentCount
          : sentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatFactStatusImplCopyWith<$Res>
    implements $CatFactStatusCopyWith<$Res> {
  factory _$$CatFactStatusImplCopyWith(
          _$CatFactStatusImpl value, $Res Function(_$CatFactStatusImpl) then) =
      __$$CatFactStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? verified, int? sentCount});
}

/// @nodoc
class __$$CatFactStatusImplCopyWithImpl<$Res>
    extends _$CatFactStatusCopyWithImpl<$Res, _$CatFactStatusImpl>
    implements _$$CatFactStatusImplCopyWith<$Res> {
  __$$CatFactStatusImplCopyWithImpl(
      _$CatFactStatusImpl _value, $Res Function(_$CatFactStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verified = freezed,
    Object? sentCount = freezed,
  }) {
    return _then(_$CatFactStatusImpl(
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      sentCount: freezed == sentCount
          ? _value.sentCount
          : sentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatFactStatusImpl implements _CatFactStatus {
  _$CatFactStatusImpl({this.verified, this.sentCount});

  factory _$CatFactStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatFactStatusImplFromJson(json);

  @override
  bool? verified;
  @override
  int? sentCount;

  @override
  String toString() {
    return 'CatFactStatus(verified: $verified, sentCount: $sentCount)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatFactStatusImplCopyWith<_$CatFactStatusImpl> get copyWith =>
      __$$CatFactStatusImplCopyWithImpl<_$CatFactStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatFactStatusImplToJson(
      this,
    );
  }
}

abstract class _CatFactStatus implements CatFactStatus {
  factory _CatFactStatus({bool? verified, int? sentCount}) =
      _$CatFactStatusImpl;

  factory _CatFactStatus.fromJson(Map<String, dynamic> json) =
      _$CatFactStatusImpl.fromJson;

  @override
  bool? get verified;
  set verified(bool? value);
  @override
  int? get sentCount;
  set sentCount(int? value);
  @override
  @JsonKey(ignore: true)
  _$$CatFactStatusImplCopyWith<_$CatFactStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
