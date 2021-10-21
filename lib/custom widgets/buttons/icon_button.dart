import 'package:flutter/material.dart';

class MyIconBtn extends StatelessWidget {

  final VoidCallback cOnPressed;
  final Icon cIcon;

  const MyIconBtn({Key? key, required this.cOnPressed, required this.cIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed:cOnPressed,
        icon: cIcon
    );
  }
}
