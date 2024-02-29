import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/cat_fact_status.freezed.dart';
part 'freezed/cat_fact_status.g.dart';

@unfreezed
class CatFactStatus with _$CatFactStatus {
  factory CatFactStatus({bool? verified, int? sentCount}) = _CatFactStatus;
  factory CatFactStatus.fromJson(Map<String, dynamic> json) =>
      _$CatFactStatusFromJson(json);
}
