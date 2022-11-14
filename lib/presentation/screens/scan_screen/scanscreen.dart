import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_root/blocs/batch_details/batch_details_bloc.dart';

import 'package:flutter_root/main.dart';
import 'package:flutter_root/presentation/screens/batch_screen/batchscreen.dart';
import 'package:flutter_root/presentation/screens/scan_screen/widgets/item_quantity_field.dart';
import 'package:flutter_root/presentation/screens/scan_screen/widgets/pop_up_message.dart';
import 'package:flutter_root/presentation/screens/scan_screen/widgets/textfields.dart';

class ScanScreenWidget extends StatefulWidget {
  final String title;
  final String batchId;
  const ScanScreenWidget(
      {super.key, required this.title, required this.batchId});

  @override
  State<ScanScreenWidget> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreenWidget> {
  final itemTextController = TextEditingController();
  final locationTextController = TextEditingController();
  final quantityTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: PersistentAppBar(
        title: widget.title,
        content: BlocProvider(
          create: (context) =>
              BatchDetailsBloc()..add(LoadPickingBatchDetails(widget.batchId)),
          child: BlocBuilder<BatchDetailsBloc, BatchDetailsState>(
            builder: (context, state) {
              if (state.batchDetails != null) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "${state.dueLines[state.lineIndex].item} - ${state.dueLines[state.lineIndex].itemDescription}",
                        textScaleFactor: 2.0,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                          "Location: ${state.dueLines[state.lineIndex].location}",
                          textScaleFactor: 1.8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 260,
                            child: state.isItemTextFieldEnabled
                                ? ScanScreenTextFields.buildEnabledTextField(
                                    itemTextController,
                                    'Scan het item',
                                    state.isItemScanError)
                                : ScanScreenTextFields.buildDisabledTextField(
                                    itemTextController,
                                    itemTextController.text,
                                    state.isItemScanned),
                          ),
                          TextButton.icon(
                              label: const Text('Scan'),
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  textStyle: const TextStyle(fontSize: 18.0)),
                              onPressed: () {
                                if (state.isItemTextFieldEnabled) {
                                  barcodeScan(itemTextController)
                                      .whenComplete(() {
                                    if (state.dueLines[state.lineIndex].item ==
                                        itemTextController.text) {
                                      context.read<BatchDetailsBloc>()
                                        ..add(DisableItemTextField())
                                        ..add(EnableLocationTextField())
                                        ..add(ItemIsScanned());
                                    } else {
                                      PopUpMessage.showPopUpMessage(context);
                                      context
                                          .read<BatchDetailsBloc>()
                                          .add(ItemScanError());
                                    }
                                  });
                                }
                              },
                              icon: Icon(Icons.qr_code,
                                  color: state.isItemTextFieldEnabled
                                      ? Colors.black
                                      : Colors.grey))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 260,
                            child: state.isLocationTextFieldEnabled
                                ? ScanScreenTextFields.buildEnabledTextField(
                                    locationTextController,
                                    'Scan de locatie',
                                    state.isLocationScanError)
                                : ScanScreenTextFields.buildDisabledTextField(
                                    locationTextController,
                                    locationTextController.text,
                                    state.isLocationScanned),
                          ),
                          TextButton.icon(
                              label: const Text('Scan'),
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  textStyle: const TextStyle(fontSize: 18.0)),
                              onPressed: () {
                                if (state.isLocationTextFieldEnabled) {
                                  barcodeScan(locationTextController)
                                      .whenComplete(() {
                                    if (state.dueLines[state.lineIndex]
                                            .location ==
                                        locationTextController.text) {
                                      context.read<BatchDetailsBloc>()
                                        ..add(DisableLocationTextField())
                                        ..add(LocationIsScanned());
                                    } else {
                                      PopUpMessage.showPopUpMessage(context);
                                      context
                                          .read<BatchDetailsBloc>()
                                          .add(LocationScanError());
                                    }
                                  });
                                }
                              },
                              icon: Icon(Icons.qr_code,
                                  color: state.isLocationTextFieldEnabled
                                      ? Colors.black
                                      : Colors.grey))
                        ],
                      ),
                      ItemQuantityContainer.build(
                        quantityTextController,
                        "${state.dueLines[state.lineIndex].quantity} ${state.dueLines[state.lineIndex].unit}",
                      ),
                      ElevatedButton(
                        onPressed: () => {
                          context.read<BatchDetailsBloc>()
                            ..add(NextLine(state.lineIndex, true))
                        },
                        child: const Text("Skip"),
                      ),
                      ElevatedButton(
                        onPressed: () => {
                          if (quantityTextController.text.isNotEmpty &
                              state.isItemScanned &
                              state.isLocationScanned)
                            {
                              context.read<BatchDetailsBloc>()
                                ..add(NextLine(state.lineIndex, false))
                                ..add(EnableItemTextField())
                                ..add(DisableLocationTextField())
                                ..add(ItemAndLocationIsNotScanned()),
                              PopUpMessage.showPopUpSuccesMessage(context),
                              itemTextController.clear(),
                              locationTextController.clear()
                            }
                          else
                            {
                              PopUpMessage.showErrorDialog(context),
                            }
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
      ),
    );
  }

  Future<void> barcodeScan(TextEditingController textEditingController) async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;

    textEditingController.text = barcodeScanRes;
  }
}
