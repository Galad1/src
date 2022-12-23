import 'package:flutter/material.dart';
import 'package:flutter_root/generated/picking_batch.pb.dart';
import 'package:flutter_root/presentation/screens/orderdetails.dart';
import 'package:flutter_root/presentation/widgets/itembox.dart';

class ListViewOfBatches extends StatefulWidget {
  List<PickingBatchSummary> batches;

  ListViewOfBatches({super.key, required this.batches});

  @override
  State<ListViewOfBatches> createState() => _ListViewOfBatchesState();
}

class _ListViewOfBatchesState extends State<ListViewOfBatches> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.batches.length,
        itemBuilder: (context, index) => ItemBox(
            height: 100,
            content: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5)),
                    color: widget.batches.elementAt(index).pickingStatus == 0
                        ? Colors.green
                        : Colors.red,
                  ),
                  width: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5, left: 20),
                  child: Text(widget.batches
                      .elementAt(index)
                      .pickingBatchId
                      .toString()),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(widget.batches.elementAt(index).warehouse),
                            Text(widget.batches
                                .elementAt(index)
                                .plannedDateTo
                                .toString()),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => OrderDetailsWidget(
                          title: widget.batches
                              .elementAt(index)
                              .pickingBatchId
                              .toString(),
                          batchId:
                              widget.batches.elementAt(index).pickingBatchId)),
                )));
  }
}
