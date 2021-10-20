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
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ),
        MyAnimatedContainer(
          cTime: 8,
          child: SizedBox(
            child: IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ),
        MyAnimatedContainer(
          cTime: 10,
          child: SizedBox(
            child: IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ),
        MyAnimatedContainer(
          cTime: 12,
          child: SizedBox(
            child: IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ),
        MyAnimatedContainer(
          cTime: 14,
          child: SizedBox(
            child: IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ),
      ],
    );
  }
}
