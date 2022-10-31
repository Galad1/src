import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_root/blocs/batch/batch_bloc.dart';
import 'package:flutter_root/generated/picking_batch.pb.dart';
import 'package:flutter_root/presentation/screens/batch_screen/batches_list.dart';
import 'package:flutter_root/presentation/screens/batch_screen/buttons.dart';
import 'package:flutter_root/services/connection_service.dart';
import 'package:grpc/grpc.dart';

import '../../../main.dart';

class BatchScreen extends StatefulWidget {
  const BatchScreen({super.key});

  @override
  State<BatchScreen> createState() => _BatchScreenState();
}

class _BatchScreenState extends State<BatchScreen> {
  List dropDownItems = [
    'Alle Magazijnen',
    'Magazijn Veenendaal',
    'Magazijn Utrecht',
    ' Magazijn Ede'
  ];
  late String selectedValue = dropDownItems.first;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BatchBloc()..add(LoadPickingBatches()),
      child: BlocBuilder<BatchBloc, BatchState>(
        builder: (context, state) {
          return PersistentAppBar(
              content: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                height: 80.0,
                child: DropdownButtonFormField(
                  onChanged: (value) {},
                  value: selectedValue,
                  items: dropDownItems
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                      labelText: 'Kies Magazijn',
                      border: UnderlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.0))),
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      child: BatchScreenButton(
                          buttonID: 0,
                          buttonTitle: 'My Batches',
                          pageID: state.pageID,
                          onPressed: () {
                            context.read<BatchBloc>().add(
                                  ChangeFromPage(state.pageID),
                                );
                          })),
                  Expanded(
                    child: BatchScreenButton(
                        buttonID: 1,
                        buttonTitle: 'All Batches',
                        pageID: state.pageID,
                        onPressed: () {
                          context.read<BatchBloc>().add(
                                ChangeFromPage(state.pageID),
                              );
                        }),
                  ),
                ],
              ),
              Expanded(
                  child: ListViewOfBatches(
                      batches: state.pageID == 1
                          ? state.allBatches
                          : state.myBatches)),
            ],
          ));
        },
      ),
    );
  }
}
