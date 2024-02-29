import 'package:cat_trivia/app/navigation/navigation_path.dart';
import 'package:cat_trivia/presentation/screen_manager.dart';
import 'package:flutter/material.dart';

class Navigation {
  static final routes = <String, Widget Function(BuildContext)>{
    NavigationPaths.catFacts: (_) => ScreenManager.catFacts$Screen(),
  };
}
