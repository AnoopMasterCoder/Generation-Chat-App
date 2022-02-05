import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/link.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 48, 60, 1),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'About Generation',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: 20.0, left: 20.0, right: 20.0, top: 10.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "A Private, Secure, End-to-End Encrypted Messaging app that helps you to connect with your connections without any Ads.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.white70, fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: 20.0, left: 20.0, right: 20.0, top: 10.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Alert:  If you registered your mobile number and if any connection calls you, your number will be visible in their call Logs.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: 20.0, left: 20.0, right: 20.0, top: 10.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Messages and Activity except Audio Calling\nare End-to-End Encrypted',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber, fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '⚠ Long Press on Camera/Gallery/Plus Icon to Pick Image From Gallery ⚠',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.cyan, fontSize: 18.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: 20.0, left: 20.0, right: 20.0, top: 30.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Hope You Will Enjoy this app!!!',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.lightBlue, fontSize: 18.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Developer:',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.orange, fontSize: 18.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'AnoopMasterCoder',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 18.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Testers:',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.green, fontSize: 18.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '\nMr__XX__Yash__XX\n Prashant\n Sayed\n Bhargav\n Amith\n Sohan\n Arsh\n Sumit\n Sandeep',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 18.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
              child: Align(
                alignment: Alignment.center,
                child: Link(
                  target: LinkTarget.self,
                  uri: Uri.parse(
                      'https://github.com/AnoopMasterCoder/Generation-Chat-App'),
                  builder: (context, followLink) => ElevatedButton(
                    child: Text('Source Code Of This App!!!'),
                    onPressed: followLink,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '⚠ GIRLS NOT ALLOWED ⚠',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
