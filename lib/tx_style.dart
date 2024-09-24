import 'package:flutter/material.dart';

class TxWidget extends StatelessWidget {
  TxWidget(this.text, {super.key});

  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 35,
        backgroundColor: const Color.fromARGB(255, 107, 6, 6),
      ),
    );
  }
}
