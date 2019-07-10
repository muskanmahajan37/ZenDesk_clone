import 'package:flutter/material.dart';
import 'UI/Pages/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zendesk Clone',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Home(),
    );
  }
}
