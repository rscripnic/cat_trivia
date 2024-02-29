import 'dart:async';

import 'package:cat_trivia/app/model/app_environment.dart';
import 'package:cat_trivia/app/enum/platform.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

Future<void> bootstrap({
  required AppEnvironment appEnvironment,
  required Future<Widget> Function() builder,
}) async {
  FlutterError.onError = (details) {
    if (kDebugMode) {
      debugPrint(
        '${details.exceptionAsString()}\n\n${details.stack}',
        wrapWidth: 1024,
      );
    }
  };

  await runZonedGuarded(
    () async => runApp(await builder()),
    (error, stackTrace) {
      if (appEnvironment.platformType == PlatformType.mobile) {
        if (kDebugMode) {
          debugPrint(
            'Critical Error:\n$error\n\n$stackTrace',
            wrapWidth: 1024,
          );
        }
      }
    },
  );
}
