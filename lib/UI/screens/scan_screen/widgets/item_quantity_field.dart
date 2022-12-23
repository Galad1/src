import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ItemQuantityContainer {
  /// This will build the widget where the user can see how many items
  /// he should take, the user also will be able to
  static Widget build(
    TextEditingController textEditingController,
    String indicatedQuantity,
  ) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Column(
        children: [
          const Text("Aantal te pakken"),
          Container(
              margin: const EdgeInsets.only(top: 10),
              width: 75,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Center(
                  child: Text(
                indicatedQuantity,
                style: const TextStyle(color: Colors.white),
              )))
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
                controller: textEditingController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
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
    ]);
  }
}
