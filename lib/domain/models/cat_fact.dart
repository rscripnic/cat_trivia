// ignore_for_file: invalid_annotation_target

import 'package:cat_trivia/domain/models/cat_fact_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/cat_fact.freezed.dart';
part 'freezed/cat_fact.g.dart';

@unfreezed
class CatFact with _$CatFact {
  factory CatFact(
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
      bool? used}) = _CatFact;
  factory CatFact.fromJson(Map<String, dynamic> json) =>
      _$CatFactFromJson(json);
}
