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
                  text: 'Mission Of GeeksForGeeks',
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
                    "With the Dream of imparting programming knowledge, Mr. Sandeep Jain, an IIT Roorkee alumnus started a GeeksforGeeks. Wheather programming excites you or you feel stifled, wondering how to prepare for interview questions or how to ace data structures and algorithms, GeeksforGeeks is a one-stop solution. With every tick of time, we are adding arrows in our quiver. From articles on various computer science subjects to programming problems for practice, from technologies to entrance examinations, we have been building ample content with superior quality.",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
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
                  text: 'Vision Of GeeksForGeeks SIT',
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
                    "   Our Mission is to impart Free Knowledge about Programming, Data Structures and Algorithms, Operating Systems, DBMS, Computer Architecture Organization, Artificial Intelligence,OOPs, Aptitude, Puzzles, Interview Experiences help students with Projects,Potential Placements and Higher Education ",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
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
