import 'package:flutter/material.dart';


class StylesText extends StatelessWidget{
  // StylesText(String text,{super.key}): mytext = text ;

  const StylesText(this.text,{super.key}) ;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white, // Text Color
        fontSize: 28.5, // Text Size
      ),
    );
  }

}