import 'package:cat_trivia/di/app_di.dart';
import 'package:cat_trivia/presentation/presentations_state/cat_facts_state/cat_facts_bloc.dart';
import 'package:cat_trivia/presentation/presentations_state/cat_facts_state/cat_facts_event.dart';
import 'package:cat_trivia/presentation/screen/application_screen.dart';
import 'package:cat_trivia/presentation/screen/cat_fatcs_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenManager {
  static Widget application$Screen() {
    return AppDI.instance().getInstanceOfObject<Application$Screen>();
  }

  static Widget catFacts$Screen() {
    return BlocProvider<CatFacts$Bloc>(
      create: (context) => AppDI.instance().getInstanceOfObject<CatFacts$Bloc>()
        ..add(SyncCatFacts$Event()),
      child: AppDI.instance().getInstanceOfObject<CatFacts$Screen>(),
    );
  }
}
