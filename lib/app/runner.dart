import 'dart:async';

import 'package:cat_trivia/app/model/app_environment.dart';
import 'package:cat_trivia/app/bootstrap.dart';
import 'package:cat_trivia/di/app_di.dart';
import 'package:cat_trivia/presentation/screen_manager.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Runner {
  static Future<void> run(AppEnvironment appEnvironment) {
    return bootstrap(
      appEnvironment: appEnvironment,
      builder: () => _appRunner(appEnvironment),
    );
  }

  static Future<Widget> _appRunner(AppEnvironment appEnvironment) async {
    WidgetsFlutterBinding.ensureInitialized();
    await AppDI.instance().init(appEnvironment);

    return ScreenUtilInit(
      builder: (context, child) => ScreenManager.application$Screen(),
    );
  }
}
