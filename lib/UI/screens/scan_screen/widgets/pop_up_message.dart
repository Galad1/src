import 'package:flutter/material.dart';

class PopUpMessage {
  static showPopUpMessage(BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Container(
          padding: const EdgeInsets.all(8),
          height: 80,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.error_rounded,
                color: Colors.white,
                size: 40.0,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: const [
                    Text(
                      'Probeer opnieuw..',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      "Het matcht niet",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
    );
  }

  static showPopUpSuccesMessage(BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Container(
          padding: const EdgeInsets.all(8),
          height: 60, //bij de andere is het 80
          decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.check_circle_rounded,
                color: Colors.white,
                size: 25.0,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  children: const [
                    Text(
                      'Artikel en locatie is gescand!',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      "Pick het volgende artikel..",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
    );
  }

  static Future<void> showErrorDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Je kan nog niet verder ...'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Niet alle velden zijn correct ingevuld!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
