import 'package:flutter/material.dart';

class MyColorList extends StatelessWidget {

  final Color c1;
  final Color c2;
  final Color c3;
  final Color c4;

  const MyColorList({Key? key, required this.c1, required this.c2, required this.c3, required this.c4}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              c1,
              c2,
              c3,
              c4,
            ],
            stops: const [0.1, 0.4, 0.7, 1.0],
          )),
    );
  }
}
