import 'package:cat_trivia/app/utils/time_tools.dart';
import 'package:cat_trivia/domain/models/cat_fact.dart';
import 'package:cat_trivia/presentation/vm/cat_fact_vm.dart';

class CatFactsVm {
  int currentCatFactIndex = 0;

  List<CatFactVm>? _catFactsVm;
  List<CatFactVm> get catFactsVm => _catFactsVm ??= List.empty(growable: true);

  List<CatFact>? _catFacts;
  set catFacts(List<CatFact>? incomingCatFacts) {
    _catFacts = List.from(incomingCatFacts ?? []);

    catFactsVm.clear();
    catFactsVm.addAll(_catFacts!
        .map((e) => CatFactVm(
            factTxt: e.text ?? "",
            createAt: TimeTools.convertTimeToString(
                TimeTools.convertUtcToLocal(e.createdAt ?? ""),
                TimeTools.ymdhmPattern)))
        .toList());
  }
}
