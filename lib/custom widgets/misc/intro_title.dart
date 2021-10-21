import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  final String cGreeting;
  final double cMove;
  final double cTextSize;
  final int cTime;
  final double cBlur;

  const Intro({Key? key, required this.cGreeting, required this.cMove, required this.cTextSize, required this.cTime, required this.cBlur}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        child: Text(
          cGreeting,
          style: TextStyle(
              fontSize: cTextSize,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).secondaryHeaderColor,
              shadows: [
                Shadow(
                  color: Theme.of(context).shadowColor,
                  blurRadius: cBlur,
                )
              ]),
        ),
        tween: Tween<double>(begin: 0, end: 1),
        curve: Curves.bounceIn,
        duration: Duration(seconds: cTime),
        builder: (BuildContext context, double _val, Widget? child) {
          return Opacity(
            opacity: _val,
            child: Padding(
              padding: EdgeInsets.only(left: _val * cMove),
              child: child,
            ),
          );
        });
  }
}
