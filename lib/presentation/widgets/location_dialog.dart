import 'package:flutter/material.dart';

class LocationDialog extends StatefulWidget {
  const LocationDialog({super.key});

  @override
  State<LocationDialog> createState() => _LocationDialog();
}

class _LocationDialog extends State<LocationDialog> {
  List<String> dropdownItems = ['LOC-1', 'LOC-2', 'LOC-3'];
  var dropdownValue = 'LOC-1';
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void submit() {
    Navigator.of(context).pop();
  }

  Future<void> openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text("Location"),
            content: DropdownButton(
              value: dropdownValue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: dropdownItems.map((String items) {
                return DropdownMenuItem(value: items, child: Text(items));
              }).toList(),
              onChanged: (String? newValue) {
                dropdownValue = newValue!;
              },
            ),
            actions: [
              TextButton(onPressed: submit, child: const Text('SUBMIT'))
            ],
          ));
}
