import 'package:flutter/material.dart';
import 'package:mydemo/custom%20widgets/buttons/icon_button.dart';

class MySliverAppBar extends StatefulWidget {
  const MySliverAppBar({Key? key}) : super(key: key);

  @override
  State<MySliverAppBar> createState() => _MySliverAppBarState();
}

class _MySliverAppBarState extends State<MySliverAppBar> {

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      foregroundColor: Colors.pink,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network('http://static.demilked.com/wp-content/uploads/2018/03/5aaa1cc4c422b-funny-weird-wtf-stock-photos-28-5a3a5b135f099__700.jpg',
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
            Navigator.pushNamed(context, '/login');
          }, //button top right, send you to settings page
          cIcon: const Icon(Icons.logout),
        ),
      ],
    );
  }
}
