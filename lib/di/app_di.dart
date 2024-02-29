import 'package:cat_trivia/app/model/app_environment.dart';
import 'package:cat_trivia/app/remote_manager/remote_address.dart';
import 'package:cat_trivia/app/remote_manager/web_manager.dart';
import 'package:cat_trivia/data/datasource/contract/remote_cat_data_source_contract.dart';
import 'package:cat_trivia/data/datasource/remote/remote_cat_data_source.dart';
import 'package:cat_trivia/data/repository/cat_repository.dart';
import 'package:cat_trivia/di/app_di_contract.dart';
import 'package:cat_trivia/domain/repository/cat_repository_contract.dart';
import 'package:cat_trivia/presentation/presentations_state/cat_facts_state/cat_facts_bloc.dart';
import 'package:cat_trivia/presentation/screen/application_screen.dart';
import 'package:cat_trivia/presentation/screen/cat_fatcs_screen.dart';
import 'package:get_it/get_it.dart';

class AppDI implements IAppDI {
  late final GetIt _service;

  static IAppDI? _instance;
  static IAppDI instance() {
    return _instance ?? AppDI._();
  }

  AppDI._() {
    _service = GetIt.instance;
  }

  @override
  S getInstanceOfObject<S extends Object>({String? instanceName}) {
    return _service<S>(instanceName: instanceName);
  }

  @override
  Future init(AppEnvironment appEnvironment) async {
    _service.registerSingleton<WebManagerContract>(WebManager(appEnvironment),
        instanceName: RemoteAddress.prodCatFactsAddress);
    _service.registerSingleton<WebManagerContract>(
        WebManager(appEnvironment.copyWith(
            remoteAddresses: RemoteAddress.prodCatImageAddress)),
        instanceName: RemoteAddress.prodCatImageAddress);

    //remoteDataSource
    _service.registerFactory<RemoteCatDataSourceContract>(
        () => RemoteCatDataSource());

    //repositories
    _service.registerFactory<CatRepositoryContract>(() => CatRepository());

    //state
    _service.registerFactory<CatFacts$Bloc>(() => CatFacts$Bloc());

    //screens
    _service
        .registerFactory<Application$Screen>(() => const Application$Screen());
    _service.registerFactory<CatFacts$Screen>(() => const CatFacts$Screen());
  }
}
