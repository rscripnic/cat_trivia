// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:cat_trivia/app/model/failure.dart';
import 'package:cat_trivia/presentation/vm/cat_fact_vm.dart';

abstract class CatFacts$State extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialCatFacts$State extends CatFacts$State {}

class CatFactsInProgress$State extends CatFacts$State {}

class CatFactsDisableProgress$State extends CatFacts$State {}

class CatFactsAlready$State extends CatFacts$State {
  final List<CatFactVm> catFactVm;
  CatFactsAlready$State({
    required this.catFactVm,
  });
}

class CatFactChanged$State extends CatFacts$State {
  final int currentCatFactIndex;
  final int maxCatFacts;
  CatFactChanged$State({
    required this.currentCatFactIndex,
    required this.maxCatFacts,
  });
  @override
  List<Object?> get props => [currentCatFactIndex];
}

class CatFactModified$State extends CatFacts$State {
  final CatFactVm catFactVm;
  CatFactModified$State({
    required this.catFactVm,
  });
  @override
  List<Object?> get props => [identityHashCode(this)];
}

class Failure$State extends CatFacts$State {
  final Failure failure;
  Failure$State({
    required this.failure,
  });
}
