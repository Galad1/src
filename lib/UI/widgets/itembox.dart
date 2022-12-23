import 'package:flutter/material.dart';

class ItemBox extends StatelessWidget {
  final Widget content;
  final double? height;
  final Function()? onPressed;
  const ItemBox(
      {super.key, required this.content, this.height, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: height,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 7,
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    offset: const Offset(0, 3))
              ]),
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.1,
              top: 15),
          width: MediaQuery.of(context).size.width * 0.8,
          height: 50,
          child: content,
        ),
      ),
    );
  }
}
