import 'package:flutter/material.dart';
import 'package:flutter_root/main.dart';
import 'package:flutter_root/models/batch.dart';
import 'package:flutter_root/presentation/screens/batch_screen/batchscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return PersistentAppBar(
      content: GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.all(25),
        crossAxisSpacing: 25,
        children: <Widget>[
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                child: IconButton(
                    icon: const Icon(Icons.menu),
                    iconSize: 24.0,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => BatchScreen()),
                      );
                    }),
              ),
              const Text("Picking")
            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                child: IconButton(
                    icon: const Icon(Icons.local_shipping),
                    iconSize: 24.0,
                    onPressed: () =>
                        null //Navigator.push(context, MaterialPageRoute(builder: (context) => const /* The route to navigate to */))
                    ),
              ),
              const Text("Transfers")
            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                child: IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    iconSize: 24.0,
                    onPressed: () =>
                        null //Navigator.push(context, MaterialPageRoute(builder: (context) => const /* The route to navigate to */))
                    ),
              ),
              const Text("Put Away")
            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                child: IconButton(
                    icon: const Icon(Icons.format_list_numbered),
                    iconSize: 24.0,
                    onPressed: () =>
                        null //Navigator.push(context, MaterialPageRoute(builder: (context) => const /* The route to navigate to */))
                    ),
              ),
              const Text("Cycle Counting")
            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                child: IconButton(
                    icon: const Icon(Icons.location_on),
                    iconSize: 24.0,
                    onPressed: () =>
                        null //Navigator.push(context, MaterialPageRoute(builder: (context) => const /* The route to navigate to */))

                    ),
              ),
              const Text("Location info")
            ],
          ),
        ],
      ),
    );
  }
}
