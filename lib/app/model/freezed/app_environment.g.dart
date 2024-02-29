// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../app_environment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppEnvironmentImpl _$$AppEnvironmentImplFromJson(Map<String, dynamic> json) =>
    _$AppEnvironmentImpl(
      platformType: $enumDecode(_$PlatformTypeEnumMap, json['platformType']),
      platformSubType:
          $enumDecode(_$PlatformSubTypeEnumMap, json['platformSubType']),
      remoteAddresses: json['remoteAddresses'] as String,
    );

Map<String, dynamic> _$$AppEnvironmentImplToJson(
        _$AppEnvironmentImpl instance) =>
    <String, dynamic>{
      'platformType': _$PlatformTypeEnumMap[instance.platformType]!,
      'platformSubType': _$PlatformSubTypeEnumMap[instance.platformSubType]!,
      'remoteAddresses': instance.remoteAddresses,
    };

const _$PlatformTypeEnumMap = {
  PlatformType.web: 'web',
  PlatformType.desktop: 'desktop',
  PlatformType.mobile: 'mobile',
  PlatformType.unknown: 'unknown',
};

const _$PlatformSubTypeEnumMap = {
  PlatformSubType.windows: 'windows',
  PlatformSubType.macOS: 'macOS',
  PlatformSubType.linux: 'linux',
  PlatformSubType.android: 'android',
  PlatformSubType.ios: 'ios',
  PlatformSubType.unknown: 'unknown',
};
