import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRolled extends StatefulWidget {
  const DiceRolled({super.key});

  @override
  State<DiceRolled> createState() {
    return _DiceRolledState();
  }
}


class _DiceRolledState extends State<DiceRolled> {
  int diceNum = 2;
  void diceRolled() {
    setState(() {
      //diceNum = Random().nextInt(6) + 1;  // random will generate number from 0-5 thus add 1 ... --> 1-6
      diceNum = randomizer.nextInt(6) + 1; // calling Random() function from above
      // why we did that --> everytime Random() is called an object is created and gets destroyed everytime a new Random() is called
      // thus to optimize we just made object of the Random() once and use many times thus making efficient code.
      // now we just made the Random() globally available for all the code
    });
    // print('dice rolling....');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$diceNum.png', width: 200),

        const SizedBox(height: 40), // alternative of using padding

        TextButton(
          onPressed: diceRolled, //-> diceRolled is a function defined by me
          style: TextButton.styleFrom(
            // padding: EdgeInsets.only(top: 40),   //-->  alternative of using SizedBox()
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: Text('Roll the dice'),
        ),

        Text(
          'your number is $diceNum',
          style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 20),
        ),
      ],
    );
  }
}
