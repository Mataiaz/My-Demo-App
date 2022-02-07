import 'package:flutter/material.dart';
import 'package:mydemo/custom%20widgets/misc/settings_colors.dart';
import 'package:mydemo/custom%20widgets/misc/text.dart';
import 'package:mydemo/pages/settings.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(cText: 'ABOUT THIS APP'),
        shadowColor: Colors.orange,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              maxRadius: 30,
              backgroundImage: NetworkImage(
                  'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg'),
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
                              cText:
                                  'This is app features:\n\nA simple login page that goes trought a loading phase while retriving information.\nA homepage with an easy navigaton system.\nA simple timer that shows basic understanding of logic and code.\nA setting page that can change some simple aspects of this app.\nAnd this page.',
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
