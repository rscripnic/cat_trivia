import 'package:cat_trivia/generated/l10n.dart';
import 'package:cat_trivia/presentation/presentations_state/cat_facts_state/cat_facts_bloc.dart';
import 'package:cat_trivia/presentation/presentations_state/cat_facts_state/cat_facts_event.dart';
import 'package:cat_trivia/presentation/presentations_state/cat_facts_state/cat_facts_state.dart';
import 'package:cat_trivia/presentation/vm/cat_fact_vm.dart';
import 'package:cat_trivia/presentation/widgets/cat_facts_page_view_item.dart';
import 'package:cat_trivia/presentation/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatFacts$Screen extends StatefulWidget {
  const CatFacts$Screen({super.key});

  @override
  State<CatFacts$Screen> createState() => _CatFacts$ScreenState();
}

class _CatFacts$ScreenState extends State<CatFacts$Screen> {
  late PageController _pageViewController;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var catFactBloc = context.read<CatFacts$Bloc>();
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () {
            catFactBloc.add(SyncCatFacts$Event());
            return Future(() => null);
          },
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: BlocBuilder<CatFacts$Bloc, CatFacts$State>(
                    buildWhen: (previous, state) =>
                        state is CatFactsAlready$State,
                    builder: (context, state) {
                      if (state is CatFactsAlready$State &&
                          state.catFactVm.isNotEmpty) {
                        return pageView(catFactBloc, state.catFactVm);
                      } else {
                        return Align(
                          alignment: Alignment.topCenter,
                          child: Text(S.of(context).empty),
                        );
                      }
                    },
                  ),
                ),
              ),
              navigationButtons(),
              progressIndicator()
            ],
          ),
        ),
      ),
    );
  }

  Widget pageView(CatFacts$Bloc catFacts$Bloc, List<CatFactVm> catFactVm) {
    return PageView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      onPageChanged: (value) =>
          catFacts$Bloc.add(NextCatFact$Event(currentIndex: value)),
      controller: _pageViewController,
      itemBuilder: (context, index) => CatFactsViewPageItem(
        catFactVm: catFactVm[index],
      ),
      itemCount: catFactVm.length,
    );
  }

  Widget navigationButtons() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: BlocBuilder<CatFacts$Bloc, CatFacts$State>(
                  buildWhen: (previous, current) =>
                      current is CatFactChanged$State,
                  builder: (context, state) => state is CatFactChanged$State &&
                          state.currentCatFactIndex > 0
                      ? FloatingActionButton(
                          backgroundColor: Colors.redAccent[100],
                          child: const Icon(Icons.navigate_before),
                          onPressed: () {
                            _pageViewController.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                        )
                      : const SizedBox()),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: BlocBuilder<CatFacts$Bloc, CatFacts$State>(
                buildWhen: (previous, current) =>
                    current is CatFactChanged$State,
                builder: (context, state) => state is CatFactChanged$State &&
                        state.currentCatFactIndex == state.maxCatFacts - 1
                    ? const SizedBox()
                    : FloatingActionButton(
                        backgroundColor: Colors.redAccent[100],
                        child: const Icon(Icons.navigate_next),
                        onPressed: () {
                          _pageViewController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget progressIndicator() {
    return BlocBuilder<CatFacts$Bloc, CatFacts$State>(
      buildWhen: (previous, state) =>
          state is CatFactsInProgress$State ||
          state is CatFactsDisableProgress$State,
      builder: (context, state) =>
          AppProgressIndicator.enabledProgressIndicator(
              show: state is CatFactsInProgress$State),
    );
  }
}
