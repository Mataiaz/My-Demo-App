import 'package:flutter/material.dart';
import 'package:mydemo/custom%20widgets/animated_container.dart';

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
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/profile');
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
                Navigator.pushReplacementNamed(context, '/home');
              },
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ),
        MyAnimatedContainer(
          cTime: 10,
          child: SizedBox(
            child: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ),
        MyAnimatedContainer(
          cTime: 12,
          child: SizedBox(
            child: IconButton(
              icon: const Icon(Icons.where_to_vote),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
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
