import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentdiceolle = 2;
  void Role() {
    setState(() {
      currentdiceolle = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentdiceolle.png",
          width: 200,
        ),
        const SizedBox(
          height: 40,
        ),
        TextButton(
            onPressed: Role,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 23, color: Colors.white)),
            child: const Text('PRESSE'))
      ],
    );
  }
}
