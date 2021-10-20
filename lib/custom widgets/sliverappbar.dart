import 'package:flutter/material.dart';
import 'package:mydemo/custom%20widgets/icon_button.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      foregroundColor: Colors.pink,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network('https://www.vets4pets.com/siteassets/species/dog/large-dog-on-walk-looking-over-hills.jpg?w=585&scale=down',
          fit: BoxFit.fill,
        ),
      ),
      shadowColor: Colors.black,
      floating: true,
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor, //Color will be exposed when collapsing sliverAppBar picture
      actions: [
        MyIconBtn(
          cOnPressed: () {
            Navigator.pushNamed(context, '/settings');
          }, //button top right, send you to settings page
          cIcon: const Icon(Icons.settings),
        ),
      ],
    );
  }
}
