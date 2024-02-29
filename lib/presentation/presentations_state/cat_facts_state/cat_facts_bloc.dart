import 'package:cat_trivia/di/app_di.dart';
import 'package:cat_trivia/domain/models/cat_fact.dart';
import 'package:cat_trivia/domain/repository/cat_repository_contract.dart';
import 'package:cat_trivia/presentation/presentations_state/cat_facts_state/cat_facts_event.dart';
import 'package:cat_trivia/presentation/presentations_state/cat_facts_state/cat_facts_state.dart';
import 'package:cat_trivia/presentation/vm/cat_fact_vm.dart';
import 'package:cat_trivia/presentation/vm/cat_facts_vm.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

class CatFacts$Bloc extends Bloc<CatFacts$Event, CatFacts$State> {
  late final CatRepositoryContract _catRepositoryContract;
  late CatFactsVm _catFactsVm;
  CatFacts$Bloc() : super(InitialCatFacts$State()) {
    _catFactsVm = CatFactsVm();
    _catRepositoryContract =
        AppDI.instance().getInstanceOfObject<CatRepositoryContract>();
    on<CatFacts$Event>((event, emit) async {
      if (event is SyncCatFacts$Event) {
        emit(CatFactsInProgress$State());
        var catFactsResult = await _catRepositoryContract.syncCatsFacts();
        emit(CatFactsDisableProgress$State());

        catFactsResult.fold((failure) => Failure$State(failure: failure),
            (succesResult) => prepareCatFacts(emit, succesResult));
      } else if (event is NextCatFact$Event) {
        _catFactsVm.currentCatFactIndex = event.currentIndex;
        emit(CatFactChanged$State(
            currentCatFactIndex: _catFactsVm.currentCatFactIndex,
            maxCatFacts: _catFactsVm.catFactsVm.length));
      } else if (event is SyncCatImage$Event) {
        event.catFactVm.catImageVm.inProgress = true;
        emit(CatFactModified$State(catFactVm: event.catFactVm));
        await event.catFactVm.syncImage();
        event.catFactVm.catImageVm.inProgress = false;
        emit(CatFactModified$State(catFactVm: event.catFactVm));
      }
    }, transformer: sequential());
  }

  prepareCatFacts(Emitter emit, List<CatFact>? catFacts) {
    _catFactsVm.catFacts = catFacts;

    for (var e in _catFactsVm.catFactsVm) {
      e.addSyncCatImageFunc((catFactVm) => syncCatImage(e));
    }

    emit(CatFactsAlready$State(catFactVm: _catFactsVm.catFactsVm));
  }

  Future<void> syncCatImage(CatFactVm catFactVm) async {
    catFactVm.catImageVm.image = await _catRepositoryContract.syncCatsImage();
  }
}
