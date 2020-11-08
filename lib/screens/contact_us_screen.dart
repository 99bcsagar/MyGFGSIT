import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../components/embedded_map.dart';
import '../services/firebase_storage_service.dart';
import '../components/my_text_field.dart';
import '../widgets/CustomAppDrawer.dart';

// ignore: must_be_immutable
class ContactUs extends StatelessWidget {
  static final String routeName = "/contact_us";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name, _email, _phone, _message;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CustomAppDrawer(),
        appBar: AppBar(
          title: Text("Contact Us"),
          backgroundColor: Color(0xFF2F8D46),
          
            // submit form button
           


class EmbeddedMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215,
      child: WebView(
        initialUrl: Uri.dataFromString(
          '<html><body><iframe src=" <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSdUOLOJvRvzW1y7kZVQaAi-hO7WQKKPGQGiXJ0PhTIFzdKxSQ/viewform?embedded=true"" width="${MediaQuery.of(context).size.width - 15}" height="230" frameborder="0" style="border:0;" aria-hidden="false" tabindex="0"></iframe></body></html>',
          mimeType: 'text/html',
        ).toString(),
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
            
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  EmbeddedMap(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
