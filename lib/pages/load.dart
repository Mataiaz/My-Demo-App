import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mydemo/custom%20widgets/misc/intro_title.dart';
import 'package:mydemo/custom%20widgets/buttons/icon_button.dart';

class Load extends StatefulWidget {
  const Load({Key? key}) : super(key: key);

  @override
  _LoadState createState() => _LoadState();
}

bool cancel = false;
String loading = 'Loading';

class _LoadState extends State<Load> {

  Future<void> loadInfo() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      loading = 'Welcome';
    });
    await Future.delayed(const Duration(seconds: 1));
      if (cancel == true) {
        Navigator.pushReplacementNamed(context, '/login');
      }
      else {
        Navigator.pushReplacementNamed(context, '/home');
      }
  }

  @override
  void initState() {
    super.initState();
    loadInfo();
    cancel = false;
    loading = 'Loading';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Intro(
                cGreeting: loading,
                cMove: 1,
                cTextSize: 90,
                cTime: 2,
                cBlur: 50.0),
            MyIconBtn(cOnPressed: () {
              setState(() {
                cancel = true;
              });
            },
                cIcon: const Icon(Icons.cancel),
            ),
          ],
        ),
      ),
    );
  }
}
