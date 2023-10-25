import 'package:dice_app/App/gradient_container.dart';
import 'package:flutter/material.dart';

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext ctx){
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Color.fromARGB(255, 0, 101, 184) , Color.fromARGB(255, 0, 61, 111) ]),
      ),
    );
  }
}