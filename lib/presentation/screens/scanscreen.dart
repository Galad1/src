import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_root/blocs/scan_screen/scan_screen_bloc.dart';
import 'package:flutter_root/generated/picking_batch.pb.dart';

import 'package:flutter_root/main.dart';
import 'package:flutter_root/presentation/screens/batch_screen/batchscreen.dart';

class ScanScreenWidget extends StatefulWidget {
  final String title;
  final String batchId;
  const ScanScreenWidget(
      {super.key, required this.title, required this.batchId});

  @override
  State<ScanScreenWidget> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreenWidget> {
  int? amount;

  @override
  Widget build(BuildContext context) {
    return PersistentAppBar(
      title: widget.title,
      content: BlocProvider(
        create: (context) =>
            ScanScreenBloc()..add(LoadPickingBatchDetails(widget.batchId)),
        child: BlocBuilder<ScanScreenBloc, ScanScreenState>(
          builder: (context, state) {
            if (state.batchDetails != null) {
              return SizedBox(
                height: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(state.batchDetails!.lines[state.lineIndex].item,
                        textScaleFactor: 2.0),
                    const Text("Location: ", textScaleFactor: 0.9),
                    Text(state.batchDetails!.lines[state.lineIndex].location,
                        textScaleFactor: 0.9),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 260,
                          child: TextField(
                            decoration: InputDecoration(
                                enabled: false,
                                labelText: "Scan een product",
                                border: OutlineInputBorder(),
                                hintText: 'Scan een Product'),
                          ),
                        ),
                        IconButton(
                            onPressed: () => null,
                            icon: const Icon(Icons.qr_code))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 260,
                          child: TextField(
                            decoration: InputDecoration(
                                enabled: false,
                                labelText: "Scan een Locatie",
                                border: OutlineInputBorder(),
                                hintText: 'Scan een Product'),
                          ),
                        ),
                        IconButton(
                            onPressed: () => null,
                            icon: const Icon(Icons.qr_code))
                      ],
                    ),
                    Center(
                      child: SizedBox(
                        width: 300,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  const Text("Aantal te pakken"),
                                  Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      width: 75,
                                      height: 50,
                                      decoration: const BoxDecoration(
                                        color: Colors.lightBlue,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                      ),
                                      child: const Center(
                                        child: Text(
                                            style:
                                                TextStyle(color: Colors.white),
                                            "44"),
                                      ))
                                ],
                              ),
                              Column(
                                children: [
                                  const Text("Aantal gepakt"),
                                  Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      width: 75,
                                      height: 50,
                                      color: Colors.white,
                                      child: TextField(
                                        onChanged: (value) => setState(() {
                                          amount = int.parse(value);
                                        }),
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter.allow(
                                              RegExp(r'[0-9]')),
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Aantal',
                                        ),
                                        enableSuggestions: true,
                                      ))
                                ],
                              )
                            ]),
                      ),
                    ),
                    TextButton(
                      onPressed: () => {
                        //TODO: Process Picking Line...
                        context.read<ScanScreenBloc>()
                          ..add(NextLine(state.lineIndex, true))
                      },
                      child: const Text("Skip"),
                    ),
                    TextButton(
                      onPressed: () => {
                        context.read<ScanScreenBloc>()
                          ..add(NextLine(state.lineIndex, false))
                      },
                      child: Text(state.isFinished ? "Eindig" : "Volgende",
                          textScaleFactor: 1.5),
                    )
                  ],
                ),
              );
            } else if (state.isFinished) {
              return Center(
                child: Column(children: [
                  const Text("Finished Batch Lines"),
                  TextButton(
                      onPressed: () => {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const BatchScreen())),
                          },
                      child: const Text("Continue"))
                ]),
              );
            } else {
              return Center(
                child: Column(
                  children: const [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircularProgressIndicator(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text('Awaiting result...'),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
