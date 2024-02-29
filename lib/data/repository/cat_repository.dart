// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import 'package:cat_trivia/app/model/exception.dart';
import 'package:cat_trivia/app/model/failure.dart';
import 'package:cat_trivia/data/datasource/contract/remote_cat_data_source_contract.dart';
import 'package:cat_trivia/di/app_di.dart';
import 'package:cat_trivia/domain/models/cat_fact.dart';
import 'package:cat_trivia/domain/repository/cat_repository_contract.dart';

class CatRepository implements CatRepositoryContract {
  late final RemoteCatDataSourceContract _remoteCatDataSourceContract;
  CatRepository() {
    _remoteCatDataSourceContract =
        AppDI.instance().getInstanceOfObject<RemoteCatDataSourceContract>();
  }

  @override
  Future<Either<Failure, List<CatFact>?>> syncCatsFacts() async {
    try {
      var catsfatcs = await _remoteCatDataSourceContract.syncCatsFacts();
      return Right(catsfatcs);
    } on ServerException {
      return Left(ServerFailure());
    } on RemoteDataIsEmptyException {
      return Left(RemoteDataIsEmptyFailure());
    }
  }

  @override
  Future<Uint8List?> syncCatsImage() async {
    try {
      return await _remoteCatDataSourceContract.syncCatsImage();
    } catch (ex) {}
    return null;
  }
}
