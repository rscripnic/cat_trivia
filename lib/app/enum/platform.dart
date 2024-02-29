import 'package:cat_trivia/app/utils/platform_manager.dart';

enum PlatformType {
  web,
  desktop,
  mobile,
  unknown;

  bool get isWeb => this == web;
  bool get isDesktop => this == desktop;
  bool get isMobile => this == mobile;
}

enum PlatformSubType {
  windows,
  macOS,
  linux,
  android,
  ios,
  unknown;

  bool get isWindows => this == windows;
  bool get isMacOS => this == macOS;
  bool get isLinux => this == linux;
  bool get isAndroid => this == android;
  bool get isIos => this == ios;
}

class Platform {
  Platform._();

  static PlatformType get platform => PlatformManager.getRunningPlatform();
  static PlatformSubType get subPlatform =>
      PlatformManager.getRunningSubPlatform();
}
