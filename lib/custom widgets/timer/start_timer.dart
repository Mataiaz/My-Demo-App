import 'package:flutter/material.dart';

class StartBtn extends StatelessWidget {

  final VoidCallback cOnPressed;
  final Icon cIcon;
  final String cTextA;
  final String cTextB;
  final double cTextSize;
  final bool cShowText;

  const StartBtn({Key? key, required this.cOnPressed, required this.cIcon, required this.cTextA, required this.cTextSize, required this.cTextB, required this.cShowText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: cOnPressed,
        child: Column(
        children: [
          cIcon,
          Text(
            (() {
              if(cShowText)
                {
                  return cTextA;
                }
              return cTextB;
            }()),
          style: TextStyle(
            fontSize: cTextSize,
          ),
          ),
      ],
    ),
    );
  }
}
