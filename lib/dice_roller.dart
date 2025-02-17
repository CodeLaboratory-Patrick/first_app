import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  
  @override
  State<DiceRoller> createState()
  {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> 
{
  //Option 1
  /*var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice()
  {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }
  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            //Option 1 for Margin.
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                //Option 2 for Margin.  
                //padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            ),  
          ],
        );
  }*/
  
  //Option 2
  
  var currentDiceRoll = 2;
  void rollDice()
  {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }
  
  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            //Option 1 for Margin.
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                //Option 2 for Margin.  
                //padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            ),  
          ],
        );
  }
}
