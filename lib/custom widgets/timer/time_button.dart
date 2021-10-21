import 'package:flutter/material.dart';

class TimeBtn extends StatelessWidget {

  final String cTitle;
  final double cTitleSize;
  final VoidCallback cOnPressed;

  const TimeBtn({Key? key, required this.cTitle, required this.cTitleSize, required this.cOnPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: cOnPressed,
        child: Text(cTitle,
        style: TextStyle(
          fontSize: cTitleSize,
        ),
      textAlign: TextAlign.center,
    ),
        );
  }
}
