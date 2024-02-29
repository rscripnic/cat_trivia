import 'package:cat_trivia/app/model/app_environment.dart';

abstract interface class IAppDI {
  Future init(AppEnvironment appEnvironment);
  T getInstanceOfObject<T extends Object>({String? instanceName});
}
