
import 'package:flutter/material.dart';
import 'package:mydemo/custom widgets/intro_title.dart';
import 'package:mydemo/custom%20widgets/text.dart';

class Load extends StatefulWidget {
  const Load({Key? key}) : super(key: key);

  @override
  _LoadState createState() => _LoadState();
}

class _LoadState extends State<Load> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const MyText(cText: 'Work in progress'),
      ),
      body: Column(
        children: /*const*/ [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          const SizedBox(height: 40),
          const Intro(
              cGreeting: 'Welcome',
              cMove: 1,
              cTextSize: 90,
              cTime: 5,
              cBlur: 50.0),
          const SizedBox(height: 20),
          const Intro(
              cGreeting: 'Velkommen',
              cMove: 20,
              cTextSize: 68,
              cTime: 10,
              cBlur: 50.0),
          const SizedBox(height: 20),
          const Intro(
              cGreeting: 'Bienvenido',
              cMove: 40,
              cTextSize: 64,
              cTime: 15,
              cBlur: 50.0),
        ],
      ),
    );
  }
}
