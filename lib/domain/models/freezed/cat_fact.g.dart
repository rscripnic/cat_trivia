// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../cat_fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatFactImpl _$$CatFactImplFromJson(Map<String, dynamic> json) =>
    _$CatFactImpl(
      status: json['status'] == null
          ? null
          : CatFactStatus.fromJson(json['status'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      user: json['user'] as String?,
      text: json['text'] as String?,
      v: json['__v'] as int?,
      source: json['source'] as String?,
      updatedAt: json['updatedAt'] as String?,
      type: json['type'] as String?,
      createdAt: json['createdAt'] as String?,
      deleted: json['deleted'] as bool?,
      used: json['used'] as bool?,
    );

Map<String, dynamic> _$$CatFactImplToJson(_$CatFactImpl instance) =>
    <String, dynamic>{
      'status': instance.status?.toJson(),
      '_id': instance.id,
      'user': instance.user,
      'text': instance.text,
      '__v': instance.v,
      'source': instance.source,
      'updatedAt': instance.updatedAt,
      'type': instance.type,
      'createdAt': instance.createdAt,
      'deleted': instance.deleted,
      'used': instance.used,
    };
