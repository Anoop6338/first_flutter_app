import 'package:firs_app/dice_rolled.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  // MyClass({key}){key: super.key;}
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: colors,
          // colors: [
          //   Color.fromARGB(255, 6, 2, 80),
          //   Color.fromARGB(255, 85, 7, 7),
          // ],
          radius: 2,
          center: startAlignment,
        ),
      ),
      child: Center(
        // child: StylesText('hello boys!! we are back')
        child: DiceRolled()
      ),
    );
  }
}
