import 'package:flutter/material.dart';
import 'package:mydemo/main.dart';

class MySettingButton extends StatelessWidget {

  final VoidCallback    cOnPressed;
  final String          cText;

  const MySettingButton({Key? key, required this.cOnPressed, required this.cText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: cOnPressed,
      child: Text(cText,
      style: TextStyle(fontSize: MyApp.cSize),
      ),
    );
  }
}
