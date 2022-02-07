import 'package:flutter/material.dart';
import 'package:mydemo/custom%20widgets/misc/animated_container.dart';

class DrawerButtons extends StatelessWidget {
  const DrawerButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAnimatedContainer(
          cTime: 6,
          child: SizedBox(
            child: IconButton(
              icon: const Icon(Icons.info),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/info');
              },
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ),
        MyAnimatedContainer(
          cTime: 8,
          child: SizedBox(
            child: IconButton(
              icon: const Icon(Icons.access_alarm),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/timer');
              },
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ),
        MyAnimatedContainer(
          cTime: 14,
          child: SizedBox(
            child: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/settings');
              },
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ),
      ],
    );
  }
}
