import 'dart:math';

import 'package:flutter/material.dart';
import 'package:training_flutter/tx_style.dart';

class GradientContainer extends StatefulWidget {
  GradientContainer({super.key});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  var imageRollDice = "images/dice-2.png";
  var currentlyNumber = 2;
  void rollDive() {
    var diceRoll = Random().nextInt(6) + 1;
    currentlyNumber = diceRoll;
    setState(() {
      imageRollDice = "images/dice-$diceRoll.png";
    });
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.greenAccent, Colors.blueGrey, Colors.redAccent],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center the children vertically
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center the children horizontally
          children: [
            Image.asset(
              imageRollDice,
              width: 200, // Set the width of the image
            ),
            TextButton(
                onPressed: rollDive,
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(25),
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(fontSize: 30)),
                child: Text("Hello Word"))
          ],
        ),
      ),
    );
  }
}
