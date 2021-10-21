import 'package:flutter/material.dart';

import '../../main.dart';

class MyLoginButton extends StatelessWidget {

  final String          cTitle;
  final VoidCallback    cOnPressed;

  const MyLoginButton({Key? key, required this.cTitle, required this.cOnPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
    onPressed: cOnPressed,
    child: Text(cTitle,
      style: TextStyle(
        fontSize: MyApp.cSize,
        color: Theme.of(context).secondaryHeaderColor,
      ),
    ),
    );
  }
}
