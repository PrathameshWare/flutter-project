import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int diceNumber = 1;
  bool goodToGo = true;

  final snackBar = SnackBar(
    width: 160,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    behavior: SnackBarBehavior.floating,
    content: const Text('Wait three seconds!'),
    duration: const Duration(milliseconds: 2500),
  );

  void rollDice() {
    if (!goodToGo) {
      return;
    }
    if (goodToGo) {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } // do your thing
    goodToGo = false;
    Future.delayed(const Duration(milliseconds: 3000), () {
      goodToGo = true;
    });
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text('Dice Roller'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Tap the Dice\nto roll',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  color: Colors.brown,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
              ),
              child: Image.asset(
                'assets/Dice/dice$diceNumber.png',
                width: 200,
                height: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
