import 'package:flutter/material.dart';
import 'package:mydemo/main.dart';
import 'package:mydemo/custom%20widgets/misc/home_drawer.dart';
import 'package:mydemo/custom%20widgets/misc/sliverappbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
      reverseDuration: const Duration(milliseconds: 400),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      //change shadow strength of drawer
      drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.transparent, //Background color
          ),
          child: const MyDrawer()),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          const MySliverAppBar(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Text(
                  "           Change my size in settings!\n                               OR\nChange my background color in settings.",
                  style: TextStyle(color: Colors.white, fontSize: MyApp.cSize),
                ),
                Container(
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  height: 200,
                  color: Colors.yellow,
                ),
                Container(
                  height: 200,
                  color: Colors.orange,
                ),
                Container(
                  height: 200,
                  color: Colors.green,
                ),
                Container(
                  height: 200,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
