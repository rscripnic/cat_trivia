import 'dart:typed_data';

import 'package:cat_trivia/app/model/failure.dart';
import 'package:cat_trivia/domain/models/cat_fact.dart';
import 'package:dartz/dartz.dart';

abstract class CatRepositoryContract {
  Future<Either<Failure, List<CatFact>?>> syncCatsFacts();
  Future<Uint8List?> syncCatsImage();
}
