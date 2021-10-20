import 'package:flutter/material.dart';
import 'package:mydemo/custom%20widgets/login_button.dart';
import 'package:mydemo/custom%20widgets/settings_colors.dart';
import 'package:mydemo/custom%20widgets/text.dart';
import 'package:mydemo/pages/settings.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const MyText(cText: 'Work in progress'),
      ),
      body: Stack(
        children: [
          Visibility(
            visible: Settings.isLightMode,
            child: const MyColorList(
              c1: Colors.lightBlueAccent,
              c2: Colors.blue,
              c3: Colors.indigoAccent,
              c4: Colors.indigo,
            ),
          ),
          Center(
            child: Container(
              color: Colors.green,
              child: MyLoginButton(
                cOnPressed: () {
                  Navigator.pushReplacementNamed(context, '/load');
                },
                cTitle: 'Login?',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
