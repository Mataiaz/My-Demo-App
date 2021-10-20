import 'package:flutter/material.dart';
import 'package:mydemo/pages/load.dart';
import 'package:mydemo/pages/login.dart';
import 'package:mydemo/pages/home.dart';
import 'package:mydemo/pages/profile.dart';
import 'package:mydemo/pages/settings.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  static double cSize = 24.0; //Text size
  static final ValueNotifier<ThemeMode> themeNotifier =
  ValueNotifier(ThemeMode.light);

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder<ThemeMode>(
        valueListenable: MyApp.themeNotifier,
        builder: (_, ThemeMode currentMode, __) {

          return MaterialApp(
            initialRoute: '/profile',
            routes: {
              '/profile'  : (context) => const Profile(),
              '/load'     : (context) => const Load(),
              '/login'    : (context) => const Login(),
              '/home'     : (context) => const Home(),
              '/settings' : (context) => const Settings(),
            },
            title: 'My flutter demo app',
            //Select which theme mode
            themeMode: currentMode,
            home: const Home(),

            // Remove the debug banner
            //debugShowCheckedModeBanner: false,

            //Dark colors
            darkTheme: ThemeData(
              primaryColor: Colors.black38,
              canvasColor: Colors.white10,
              shadowColor: Colors.deepOrange,
              secondaryHeaderColor: Colors.orange,
              textTheme: const TextTheme(
                bodyText2: TextStyle(),
              ).apply(
                bodyColor: Colors.orange,
              )
            ),

            //Light colors
            theme: ThemeData(
              primaryColor: Colors.deepOrange,
              secondaryHeaderColor: Colors.white,
                shadowColor: Colors.white,
              canvasColor: Colors.orange,
                textTheme: const TextTheme(
                  bodyText2: TextStyle(),
                ).apply(
                  bodyColor: Colors.orange,
                )
            ),
          );
        });
  }
}