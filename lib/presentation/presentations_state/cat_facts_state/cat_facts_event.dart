// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:cat_trivia/presentation/vm/cat_fact_vm.dart';

abstract class CatFacts$Event extends Equatable {
  @override
  List<Object?> get props => [];
}

class SyncCatFacts$Event extends CatFacts$Event {
  @override
  List<Object?> get props => [];
}

class NextCatFact$Event extends CatFacts$Event {
  final int currentIndex;
  NextCatFact$Event({
    required this.currentIndex,
  });
  @override
  List<Object?> get props => [];
}

class SyncCatImage$Event extends CatFacts$Event {
  final CatFactVm catFactVm;
  SyncCatImage$Event({
    required this.catFactVm,
  });
}
