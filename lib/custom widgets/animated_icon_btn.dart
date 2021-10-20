import 'package:flutter/material.dart';

class MyAnimatedIconBtn extends StatelessWidget {

  final VoidCallback cOnPressed;
  final AnimatedIcon cIcon;

  const MyAnimatedIconBtn({Key? key, required this.cOnPressed, required this.cIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed:cOnPressed,
        icon: cIcon
    );
  }
}
