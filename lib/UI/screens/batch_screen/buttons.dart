import 'package:flutter/material.dart';

class BatchScreenButton extends StatefulWidget {
  final int buttonID;
  final int pageID;
  final void Function() onPressed;
  final String buttonTitle;

  const BatchScreenButton(
      {super.key,
      required this.buttonID,
      required this.pageID,
      required this.onPressed,
      required this.buttonTitle});

  @override
  State<BatchScreenButton> createState() => _BatchScreenButtonState();
}

class _BatchScreenButtonState extends State<BatchScreenButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.0,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: getColorOfButton(widget.pageID, widget.buttonID)),
        onPressed: () {
          widget.onPressed();
        },
        child: Text(
          widget.buttonTitle,
          style: const TextStyle(fontSize: 22.0),
        ),
      ),
    );
  }

  MaterialStateProperty<Color?>? getColorOfButton(int pageID, int buttonID) {
    if (buttonID == 0 && pageID == 0) {
      return MaterialStateProperty.all(Colors.blue);
    } else if (buttonID == 0 && pageID == 1) {
      return MaterialStateProperty.all(
        Colors.grey,
      );
    } else if (buttonID == 1 && pageID == 1) {
      return MaterialStateProperty.all(Colors.blue);
    } else {
      return MaterialStateProperty.all(Colors.grey);
    }
  }
}
