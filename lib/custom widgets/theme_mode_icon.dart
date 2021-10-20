import 'package:flutter/material.dart';

class MyThemeIcon extends StatelessWidget {
  final AnimationController mAnimationController;
  final AnimatedIconData mIcon;
  const MyThemeIcon({Key? key, required this.mAnimationController, required this.mIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedIcon(progress: mAnimationController,
        icon: mIcon,
    );
  }
}
