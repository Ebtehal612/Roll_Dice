import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

final rand = Random();

class dice extends StatefulWidget {
  const dice({super.key});
  @override
  State<dice> createState() {
    return _diceState();
  }
}

class _diceState extends State<dice> {
  var currentdice = 2;
  var tk = 0;
  void rolldice() {
    setState(() {
      currentdice = rand.nextInt(6) + 1;
    });
  }

  void rolldiceTimer() {
    Timer.periodic(const Duration(seconds: 3), (tota) {
      setState(() {
        currentdice = rand.nextInt(6) + 1;
        tk = tota.tick;
      });
    });
  }

  @override
  Widget build(context) {
    //rolldiceTimer();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentdice.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              //  padding: EdgeInsets.only(top: 20,)
              foregroundColor: Colors.black,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        ),
        Text(
          'Counter: $tk',
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    rolldiceTimer();
  }
}
