import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';

import 'package:flutter_root/presentation/screens/homescreen.dart';
import 'package:flutter_root/services/connection_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
          selectionColor: Colors.black,
          selectionHandleColor: Colors.black,
        ),
      ),
    );
  }
}

class PersistentAppBar extends StatelessWidget {
  final Widget content;
  final String? title;
  const PersistentAppBar({super.key, required this.content, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildFlowAppBar(title),
      body: content,
    );
  }

  PreferredSizeWidget _buildFlowAppBar(String? title) {
    return AppBar(
      title: Text(title ?? ""),
      backgroundColor: Colors.lightBlue,
    );
  }
}
