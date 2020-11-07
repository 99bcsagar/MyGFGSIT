import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../widgets/CustomAppDrawer.dart';

class MissionAndVision extends StatefulWidget {
  static final String routeName = "/mission";

  @override
  _MissionAndVisionState createState() => _MissionAndVisionState();
}

class _MissionAndVisionState extends State<MissionAndVision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: CustomAppDrawer(),
      appBar: AppBar(
        title: Text(
          "Mission & Vision",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 80.0,
                child: TextLiquidFill(
                  text: 'Mission',
                  waveColor: Colors.white,
                  boxBackgroundColor: Color.fromRGBO(128, 199, 131, 1),
                  textStyle: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 80.0,
                ),
              ),
              SizedBox(
                height: 550.0,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "With the Dream of imparting programming knowledge, Mr. Sandeep Jain, Alumni of IIT Ropar started GeeksforGeeks. We at Geeksfor Geeks Create the Next Generation Technology Poineers.This is a a Non-profit Organization which Believes in Helping Students and our core values.",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 80.0,
                child: TextLiquidFill(
                  text: 'Vision',
                  waveColor: Colors.white,
                  boxBackgroundColor: Color.fromRGBO(128, 199, 131, 1),
                  textStyle: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 80.0,
                ),
              ),
              SizedBox(
                height: 550.0,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "   Our Vision is to impart Free Knowledge about Programming, Data Structures and Algorithms, Operating Systems, DBMS, Computer Architecture Organization, Artificial Intelligence,OOPs, Aptitude, Puzzles and help students with Projects,Potential Placements and Higher Education. ",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
