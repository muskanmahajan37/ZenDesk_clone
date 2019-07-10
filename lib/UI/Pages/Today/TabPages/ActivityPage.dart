import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  ActivityPage({Key key}) : super(key: key);

  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'You have no Activity today.',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}
