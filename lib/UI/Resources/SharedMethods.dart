import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String getDate() {
  var now = new DateTime.now();
  var formatter = new DateFormat('MMM dd, yyyy');
  String formatted = formatter.format(now);
  return formatted;
}

String getDay() {
  var now = new DateTime.now();
  var formatter = new DateFormat('EE, MMM dd');
  String formatted = formatter.format(now);
  return formatted;
}

String getTime() {
  var now = new DateTime.now();
  var formatter = new DateFormat().add_jm();
  String formatted = formatter.format(now);
  return formatted;
}

SnackBar ksnackBar(BuildContext context, String message) {
  return SnackBar(
    duration: Duration(milliseconds: 400),
    content: Text(
      message,
      textAlign: TextAlign.center,
    ),
    backgroundColor: Theme.of(context).primaryColor,
  );
}

kopenPage(BuildContext context, Widget page) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) => page,
    ),
  );
}

kbackBtn(BuildContext context) {
  Navigator.of(context).pop();
}

kopenPageBottom(BuildContext context, Widget page) {
  Navigator.of(context).push(
    CupertinoPageRoute<bool>(
      fullscreenDialog: true,
      builder: (BuildContext context) => page,
    ),
  );
}


