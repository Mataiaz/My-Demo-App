import 'package:flutter/material.dart';
import 'package:mydemo/main.dart';

class MyText extends StatelessWidget {

  final String cText;

  const MyText({Key? key, required this.cText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      cText,
      style: TextStyle(
        fontSize: MyApp.cSize,
        color: Theme.of(context).secondaryHeaderColor,
      ),
    );
  }
}
