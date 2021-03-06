import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../widgets/CustomAppDrawer.dart';

class EventRegistration extends StatefulWidget {
  static final String routeName = "/event_registration";
  @override
  _EventRegistrationState createState() => _EventRegistrationState();
}

class _EventRegistrationState extends State<EventRegistration> {
  TextEditingController name = TextEditingController();
  TextEditingController usn = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController event = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(
          "Register",
          style: TextStyle(fontSize: null),
        ),
      ),
      drawer: CustomAppDrawer(),
      body: new SafeArea(
        top: false,
        bottom: false,
        child: new Form(
          key: _formKey,
          child: new ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: <Widget>[
              Divider(),
              new TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.person),
                  hintText: 'Enter your first and last name',
                  labelText: 'Name',
                ),
                controller: name,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.carpenter_rounded),
                  hintText: 'Enter your USN',
                  labelText: 'USN',
                ),
                controller: usn,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.email),
                  hintText: 'Enter a email address',
                  labelText: 'Email',
                ),
                controller: email,
                keyboardType: TextInputType.emailAddress,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.event),
                  hintText: 'Enter the Event Name',
                  labelText: 'Event',
                ),
                controller: event,
                keyboardType: TextInputType.emailAddress,
              ),
              new Container(
                padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                child: new RaisedButton(
                  child: const Text('Submit'),
                  onPressed: () async {
                    await FirebaseFirestore.instance
                        .collection('EventRegistration')
                        .add({
                      'Name': name.text,
                      'usn': usn.text,
                      'email': email.text,
                      'event': event.text
                    }).then(
                      (value) {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
