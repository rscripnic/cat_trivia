import 'dart:typed_data';

import 'package:cat_trivia/app/model/exception.dart';
import 'package:cat_trivia/app/remote_manager/remote_address.dart';
import 'package:cat_trivia/app/remote_manager/remote_api.dart';
import 'package:cat_trivia/app/remote_manager/web_manager.dart';
import 'package:cat_trivia/data/datasource/contract/remote_cat_data_source_contract.dart';
import 'package:cat_trivia/di/app_di.dart';
import 'package:cat_trivia/domain/models/cat_fact.dart';

class BaseRepository {
  late Map<String, WebManagerContract> webManagers;

  BaseRepository() {
    webManagers = {};
  }

  WebManagerContract getWebManager(String instanceNameByIp) {
    if (webManagers[instanceNameByIp] != null) {
      return webManagers[instanceNameByIp]!;
    }

    var dataSource = AppDI.instance().getInstanceOfObject<WebManagerContract>(
        instanceName: instanceNameByIp);
    webManagers.addEntries({MapEntry(instanceNameByIp, dataSource)});

    return dataSource;
  }
}

class RemoteCatDataSource extends BaseRepository
    implements RemoteCatDataSourceContract {
  @override
  Future<List<CatFact>> syncCatsFacts() async {
    List<CatFact> response = List.empty(growable: true);

    var remoteResponse = await getWebManager(RemoteAddress.prodCatFactsAddress)
        .get(RemoteApi.catsFacts, {});
    if (remoteResponse.data == null) {
      throw RemoteDataIsEmptyException();
    } else {
      if (remoteResponse.data is Iterable) {
        var catFacts = remoteResponse.data as Iterable;
        if (catFacts.isNotEmpty) {
          try {
            for (var element in catFacts) {
              response.add(CatFact.fromJson(element));
            }
          } catch (ex) {}
        }
      }
    }
    return response;
  }

  @override
  Future<Uint8List?> syncCatsImage() async {
    var remoteResponse = await getWebManager(RemoteAddress.prodCatImageAddress)
        .getMediaData(RemoteApi.catsImage, {});
    if (remoteResponse == null) {
      throw RemoteDataIsEmptyException();
    } else {
      return remoteResponse;
    }
  }
}
