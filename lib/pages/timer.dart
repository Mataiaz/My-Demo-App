import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mydemo/custom%20widgets/timer/pre_time_select.dart';
import 'package:mydemo/custom%20widgets/timer/start_timer.dart';
import 'package:mydemo/custom%20widgets/timer/time_button.dart';

class SetTimer extends StatefulWidget {
  const SetTimer({Key? key}) : super(key: key);

  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<SetTimer> {
  int _seconds = 5;
  int _minutes = 0;
  int _hours = 0;
  bool isActivated = false;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_seconds == 0 && _minutes == 0 && _hours == 0 ||
            isActivated == false) {
          setState(() {
            isActivated = false;
            _seconds = 0;
            _minutes = 0;
            _hours = 0;
            timer.cancel();
          });
        } else if (_minutes == 0 && _seconds == 0) {
          setState(() {
            _seconds = 59;
            _minutes = 59;
            _hours--;
          });
        } else if (_seconds == 0) {
          setState(() {
            if (_minutes > 0) {
              _seconds = 59;
            }
            setState(() {
              _minutes--;
            });
          });
        } else {
          setState(() {
            _seconds--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        toolbarHeight: 40,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.red,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(40))),
            child: Column(
              children: [
                const SizedBox(height: 120),
                StartBtn(
                  cOnPressed: () {
                    isActivated = !isActivated;
                    if (isActivated && _seconds > 0 ||
                        _minutes > 0 ||
                        _hours > 0) {
                      startTimer();
                    } else {
                      isActivated = false;
                    }
                  },
                  cIcon: const Icon(
                    Icons.alarm,
                    size: 72,
                  ),
                  cShowText: isActivated,
                  cTextA: 'Cancel',
                  cTextB: 'Start',
                  cTextSize: 30,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        '$_hours h : $_minutes m : $_seconds s',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    )),
              ),
              Row(
                children: [
                  PreTime(
                    child: TimeBtn(
                        cOnPressed: () {
                          setState(() {
                            _seconds = 2;
                          });
                        },
                        cTitle: '2sec',
                        cTitleSize: 30),
                  ),
                  PreTime(
                    child: TimeBtn(
                        cOnPressed: () {
                          setState(() {
                            _minutes = 1;
                          });
                        },
                        cTitle: '1 min',
                        cTitleSize: 30),
                  ),
                  PreTime(
                    child: TimeBtn(
                        cOnPressed: () {
                          setState(() {
                            _hours = 1;
                          });
                        },
                        cTitle: '1 hr',
                        cTitleSize: 30),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
