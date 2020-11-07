import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/CustomAppDrawer.dart';

class About extends StatelessWidget {
  static final String routeName = "/about";

  Future<dynamic> urlLauncher(String url) async // function for launching url
  {
    if (await canLaunch(url)) {
      return await launch(url);
    } else {
      throw 'Cannot launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("About Us"),
      ),
      drawer: CustomAppDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  'GeeksForGeeks SIT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF2F8D46),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                  child: CircleAvatar(
                backgroundColor: Color(0xFF2F8D46),
                radius: 70,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/gfg.png'),
                  radius: 67,
                  foregroundColor: Color(0xFF2F8D46),
                ),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TypewriterAnimatedTextKit(
                    text: ['About Us'],
                    speed: Duration(milliseconds: 300),
                    repeatForever: true,
                    textStyle: TextStyle(
                      color: Color(0xFF2F8D46),
                      fontSize: 30,
                    )),
                Icon(
                  Icons.info,
                  color: Color(0xFF2F8D46),
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "We are the Geeks of Siddaganga Institute of Technology. We are powered by GeeksforGeeks Organization. We Help Students in the field of Computer Science and Artificial Intelligence in their path to potential placement and Higher Education. Our Alumni Work at Google, Microsoft, Amazon, Facebook, UBER, Cisco, Adobe, Media.net, Tower Research and many other companies",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                )),
            SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }
}
