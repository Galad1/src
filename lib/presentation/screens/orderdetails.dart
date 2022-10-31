import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_root/generated/picking_batch.pbgrpc.dart';
import 'package:flutter_root/main.dart';
import 'package:flutter_root/models/batch.dart';
import 'package:flutter_root/models/product.dart';
import 'package:flutter_root/presentation/screens/scanscreen.dart';

import '../../services/connection_service.dart';
import '../widgets/itembox.dart';

class OrderDetailsWidget extends StatefulWidget {
  final String title;
  final String batchId;
  const OrderDetailsWidget({super.key, required this.title, required this.batchId});

  @override
  State<OrderDetailsWidget> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetailsWidget> {
  late Future<PickingBatchDetails> batch;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _call_grpc();
  }

  Future<void> _call_grpc() async {
    batch = ConnectionClient.client.fetchLoadPickingBatchDetails(widget.batchId);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentAppBar(
      title: widget.title,
      content: FutureBuilder<PickingBatchDetails>(
        future: batch,
        builder: (BuildContext context, AsyncSnapshot<PickingBatchDetails> snapshot){
          List<Widget> children;
          if(snapshot.hasData){
            children = <Widget>[
              const SizedBox(height: 10.0),
              Text(
                widget.title.toString(),
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: SizedBox(
                  height: 60.0,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => ScanScreenWidget(
                                title: widget.title,
                                batchId: widget.batchId,)),
                      );
                    },
                    child: const Text(
                      'Start',
                      style: TextStyle(fontSize: 32.0),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data!.lines.length,
                  itemBuilder: (context, index) => ItemBox(
                      height: 100,
                      content: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5)),
                              color:
                                  snapshot.data!.lines.elementAt(index).status ==
                                          1
                                      ? Colors.green
                                      : Colors.red,
                            ),
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 5, left: 20),
                            child: Text(
                                snapshot.data!.lines.elementAt(index).item),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(top: 10, right: 5),
                              child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(snapshot.data!.lines
                                      .elementAt(index)
                                      .item)),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ];
          }else{
            children = const <Widget>[
              SizedBox(
                width: 60,
                height: 60,
                child: CircularProgressIndicator(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Loading data...'),
              ),
            ];
          }
          return Center(child: Column(children: children));
        },
      )
    );
  }
}
