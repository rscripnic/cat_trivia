import 'package:cat_trivia/app/enum/platform.dart';
import 'package:flutter/foundation.dart';

class PlatformManager {
  PlatformManager._();

  static PlatformType getRunningPlatform() {
    if (kIsWeb) {
      return PlatformType.web;
    }
    final platform = defaultTargetPlatform;
    if (platform == TargetPlatform.linux ||
        platform == TargetPlatform.macOS ||
        platform == TargetPlatform.windows) {
      return PlatformType.desktop;
    } else if (platform == TargetPlatform.android ||
        platform == TargetPlatform.iOS) {
      return PlatformType.mobile;
    } else {
      return PlatformType.unknown;
    }
  }

  static PlatformSubType getRunningSubPlatform() {
    final platform = defaultTargetPlatform;
    if (platform == TargetPlatform.linux) {
      return PlatformSubType.linux;
    } else if (platform == TargetPlatform.macOS) {
      return PlatformSubType.macOS;
    } else if (platform == TargetPlatform.windows) {
      return PlatformSubType.windows;
    } else if (platform == TargetPlatform.android) {
      return PlatformSubType.android;
    } else if (platform == TargetPlatform.iOS) {
      return PlatformSubType.ios;
    } else {
      return PlatformSubType.unknown;
    }
  }
}
