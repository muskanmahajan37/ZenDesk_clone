import 'package:flutter/material.dart';

TextStyle kBoldTextStyle = TextStyle(fontSize: 14, fontWeight: FontWeight.w600);

TextStyle kLighTextStyle = TextStyle(fontSize: 12, fontWeight: FontWeight.w100);

InputDecoration kTextFieldDecoration = InputDecoration(
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      width: 1.0,
      style: BorderStyle.solid,
    ),
  ),
  // focusColor: Colors.white,
  hintStyle: TextStyle(
    color: Colors.white,
    height: 2.5,
    fontWeight: FontWeight.w300,
  ),
  labelStyle: TextStyle(height: 1.5, color: Colors.white60),
  contentPadding: EdgeInsets.symmetric(
    vertical: 5.0,
    horizontal: 20.0,
  ),
);
