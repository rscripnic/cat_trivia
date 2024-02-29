import 'package:cat_trivia/app/enum/platform.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/app_environment.freezed.dart';
part 'freezed/app_environment.g.dart';

@freezed
class AppEnvironment with _$AppEnvironment {
  factory AppEnvironment(
      {required PlatformType platformType,
      required PlatformSubType platformSubType,
      required String remoteAddresses}) = _AppEnvironment;
  factory AppEnvironment.fromJson(Map<String, dynamic> json) =>
      _$AppEnvironmentFromJson(json);
}
