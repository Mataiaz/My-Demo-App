import 'package:flutter/material.dart';
import 'package:mydemo/custom%20widgets/settings_colors.dart';
import 'package:mydemo/custom%20widgets/text.dart';
import 'package:mydemo/pages/settings.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(cText: 'MR DOG'),
        shadowColor: Colors.orange,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              maxRadius: 30,
              backgroundImage: NetworkImage('https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg'),
            ),
          )
        ],
        toolbarHeight: 80,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Stack(
        children: [
          Visibility(
            visible: Settings.isLightMode,
            child: const MyColorList(
              c1: Colors.orange,
              c2: Colors.orange,
              c3: Colors.orange,
              c4: Colors.deepOrangeAccent,
            ),
          ),
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                vertical: 0.0,
              ),
              child: Column(
                children: [
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent.withOpacity(0.5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40))),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            MyText(
                              cText: 'Bio:',
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
