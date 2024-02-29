// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cat_trivia/presentation/presentations_state/cat_facts_state/cat_facts_bloc.dart';
import 'package:cat_trivia/presentation/presentations_state/cat_facts_state/cat_facts_event.dart';
import 'package:cat_trivia/presentation/presentations_state/cat_facts_state/cat_facts_state.dart';
import 'package:cat_trivia/presentation/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';

import 'package:cat_trivia/presentation/vm/cat_fact_vm.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CatFactsViewPageItem extends StatelessWidget {
  final CatFactVm catFactVm;
  const CatFactsViewPageItem({
    Key? key,
    required this.catFactVm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<CatFacts$Bloc>().add(SyncCatImage$Event(catFactVm: catFactVm));
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
                maxHeight: 170, maxWidth: 500, minHeight: 170),
            child: BlocBuilder<CatFacts$Bloc, CatFacts$State>(
                buildWhen: (previous, current) =>
                    current is CatFactModified$State,
                builder: ((context, state) => catFactVm.catImageVm.image != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.memory(
                          catFactVm.catImageVm.image!,
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      )
                    : Stack(
                        children: [
                          Center(
                              child: Icon(
                            Icons.image,
                            color: Colors.grey[500],
                            size: 40,
                          )),
                          state is CatFactModified$State &&
                                  state.catFactVm.catImageVm.inProgress
                              ? Center(
                                  child: AppProgressIndicator
                                      .circularProgressIndicator(),
                                )
                              : const SizedBox()
                        ],
                      ))),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(catFactVm.factTxt ?? ""),
          const SizedBox(
            height: 10,
          ),
          Text(
            catFactVm.createAt ?? "",
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
