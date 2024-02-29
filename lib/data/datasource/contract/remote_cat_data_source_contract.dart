import 'dart:typed_data';

import 'package:cat_trivia/domain/models/cat_fact.dart';

abstract class RemoteCatDataSourceContract {
  Future<List<CatFact>> syncCatsFacts();
  Future<Uint8List?> syncCatsImage();
}
