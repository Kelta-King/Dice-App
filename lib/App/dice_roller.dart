import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  int currentDice = 1;
  final rollerInstance = Random();

  void rollDice() {
    setState(() {
      currentDice = rollerInstance.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/dice-six-faces-$currentDice.png", height: 200,),
          const SizedBox(height: 10),
          TextButton(
            onPressed: rollDice, 
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(12),
              foregroundColor: Colors.black,
              backgroundColor: Colors.yellow,
              textStyle: const TextStyle(
                fontSize: 24,
              ),
            ),
            child: 
              const Text(
                "Roll dice",
              )
            ),
        ],
      ),
    );
  }
}
