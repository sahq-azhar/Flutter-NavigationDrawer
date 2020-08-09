import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return Padding(
      padding: EdgeInsets.all(150.0),
      child: new FlatButton(
        disabledColor: Colors.transparent,
        onPressed: _launchURL,
        child: Image.asset('images/git.png'),
        // label: new Text('Github'),
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://github.com/sahq-azhar';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
