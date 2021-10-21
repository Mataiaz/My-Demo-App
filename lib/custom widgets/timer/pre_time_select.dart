import 'package:flutter/material.dart';

class PreTime extends StatelessWidget {

  final Widget child;

  const PreTime({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: 150,
              decoration: const BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40), bottom: Radius.circular(40))),
              child: child,
            ),
          ),
    );
  }
}
