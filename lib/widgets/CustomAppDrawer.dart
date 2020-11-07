import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share/share.dart';

import '../screens/EventRegistration.dart';
import '../screens/contact_us_screen.dart';
import '../screens/mission.dart'
import '../screens/homepage.dart';
import '../screens/LoginScreen.dart';
import '../screens/about_screen.dart';
import '../screens/members.dart';
import '../screens/upcoming_events_screen.dart';
import '../services/firebase_auth_service.dart';

class CustomAppDrawer extends StatefulWidget {
  @override
  _CustomAppDrawerState createState() => _CustomAppDrawerState();
}

class _CustomAppDrawerState extends State<CustomAppDrawer> {
   String email,name,googlename,firestorename;
  @override
  void initState() {
     getEmail();
    super.initState();
  }
  getEmail()async{
    email = FirebaseAuth.instance.currentUser.email;
  }
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(children: [
          DrawerHeader(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 2.5),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/logo.jpeg"),
                    fit: BoxFit.cover)),
            child: null,
          ),
           ListTile(
              leading: Icon(Icons.person,color: Color.fromRGBO(47, 141, 70, 1),),
              title: Text(email),
            ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, HomePage.routeName);
            },
            child: ListTile(
              title: Text(
                "Home",
              ),
              // style: TextStyle(color: Colors.white),
              leading: Icon(
                Icons.home,
                color: Color.fromRGBO(47, 141, 70, 1),
              ),
            ),
          ),
          Divider(
            color: Color.fromRGBO(47, 141, 70, 1),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, About.routeName);
            },
            child: ListTile(
              title: Text(
                "About Us",
              ),
              leading: Icon(
                Icons.info,
                color: Color.fromRGBO(47, 141, 70, 1),
              ),
            ),
          ),
           Divider(
            color: Color.fromRGBO(47, 141, 70, 1),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Mission.routeName);
            },
          child: ListTile(
              title: Text(
                "Mission",
              ),
              leading: Icon(
                Icons.,
                color: Color.fromRGBO(47, 141, 70, 1),
              ),
            ),
          ),
          Divider(
            color: Color.fromRGBO(47, 141, 70, 1),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Members.routeName);
            },
            child: ListTile(
              title: Text(
                "Team",
              ),
              leading: Icon(
                Icons.group,
                color: Color.fromRGBO(47, 141, 70, 1),
              ),
            ),
          ),
          Divider(
            color: Color.fromRGBO(47, 141, 70, 1),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, UpcomingEventsScreen.routeName);
            },
            child: ListTile(
              title: Text(
                "Events",
              ),
              leading: Icon(
                Icons.event,
                color: Color.fromRGBO(47, 141, 70, 1),
              ),
            ),
          ),
          Divider(
            color: Color.fromRGBO(47, 141, 70, 1),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, EventRegistration.routeName);
            },
            child: ListTile(
              title: Text(
                "Register",
              ),
              leading: Icon(
                Icons.app_registration,
                color: Color.fromRGBO(47, 141, 70, 1),
              ),
            ),
          ),
          Divider(
            color: Color.fromRGBO(47, 141, 70, 1),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ContactUs.routeName);
            },
            child: ListTile(
              title: Text(
                "Contact Us",
              ),
              leading: Icon(
                Icons.contact_page,
                color: Color.fromRGBO(47, 141, 70, 1),
              ),
            ),
          ),
            
          Divider(
            color: Color.fromRGBO(47, 141, 70, 1),
          ),
          InkWell(
            onTap: () {
              Share.share('Find *GFG SIT* app on Google Play Store, \n\n ' );
            },
            child: ListTile(
              title: Text(
                "Share",
              ),
              leading: Icon(
                Icons.share,
                color: Color.fromRGBO(47, 141, 70, 1),
              ),
            ),
          ),
          Divider(
            color: Color.fromRGBO(47, 141, 70, 1),
          ),
          InkWell(
            onTap: () async {
              await FirebaseAuthService.logoutUser();
              Navigator.pushNamedAndRemoveUntil(
                context,
                LoginScreen.routeName,
                (route) => false,
              );
              Fluttertoast.showToast(msg: "Logged out successfully");
            },
            child: ListTile(
              title: Text(
                "Logout",
              ),
              leading: Icon(
                Icons.logout,
                color: Color.fromRGBO(47, 141, 70, 1),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
