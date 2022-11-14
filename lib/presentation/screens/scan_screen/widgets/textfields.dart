import 'package:flutter/material.dart';

class ScanScreenTextFields {
  static Widget buildDisabledTextField(
      TextEditingController controller, String? labelText, bool isScanned) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(
          Icons.error,
          color: isScanned ? Colors.green : Colors.grey,
        ),
        enabled: false,
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }

  static Widget buildEnabledTextField(TextEditingController controller,
      String? labelText, bool isErrorWhileScanning) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(
          Icons.error,
          color: isErrorWhileScanning ? Colors.red : Colors.orangeAccent,
        ),
        enabled: false,
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
