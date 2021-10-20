import 'package:flutter/material.dart';
import 'package:mydemo/custom%20widgets/setting_button.dart';
import 'package:mydemo/custom%20widgets/settings_colors.dart';
import 'package:mydemo/custom%20widgets/text.dart';
import 'package:mydemo/main.dart';

class Settings extends StatefulWidget {
  static bool isLightMode = true;

  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

String darkMode = 'Dark theme';

void setThemeBtnText(String theme)
{
  if (Settings.isLightMode)
    {
      darkMode = 'Dark theme';
    }
  else {
    darkMode = 'Light theme';
  }
}

class _SettingsState extends State<Settings> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late bool isPlaying = false;
  bool isVisible = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 450));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const MyText(cText: 'Settings'),
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            )
          ],
        ),
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
            child: SizedBox(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  vertical: 120.0,
                ),
                child: Column( //Setting buttons
                  children: [
                    MySettingButton(
                      cText: (darkMode),
                      cOnPressed: () {
                        setState(() {
                          setThemeBtnText(darkMode);
                          Settings.isLightMode = !Settings.isLightMode;
                          // ignore: avoid_print
                          print('Light mode is ${Settings.isLightMode}');
                        });
                        MyApp.themeNotifier.value =
                            MyApp.themeNotifier.value == ThemeMode.light
                                ? ThemeMode.dark
                                : ThemeMode.light;
                      },
                    ),
                    MySettingButton(
                      cText: 'Change text size',
                      cOnPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                    ),
                    Row( // Size option for text
                      children: [
                        Expanded(
                          child:
                          Visibility(
                            visible: isVisible,
                            child: MySettingButton(
                              cText: 'Small',
                              cOnPressed: () {
                                setState(() {
                                  MyApp.cSize = 20.0;
                                });
                              },
                            ),
                          ),
                        ),
                        Visibility(
                          visible: isVisible,
                          child: MySettingButton(
                              cText: 'Normal',
                              cOnPressed: () {
                                setState(() {
                                  MyApp.cSize = 24.0;
                                });
                              },
                            ),
                        ),
                        Expanded(
                          child: Visibility(
                            visible: isVisible,
                            child:
                            MySettingButton(
                              cText: 'Big',
                              cOnPressed: () {
                                setState(() {
                                  MyApp.cSize = 30.0;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ) //Size option for text
                  ],
                ), //Setting buttons
              ),
            ),
          )
        ],
      ),
    );
  }
}
