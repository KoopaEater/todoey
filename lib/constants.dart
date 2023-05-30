import 'package:flutter/material.dart';

typedef VoidBoolCallback = void Function(bool?);
typedef AddTaskCallback = void Function(String);

const kBigTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w700,
  color: Colors.white,
);

const kSmallTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.normal,
  color: Colors.white,
);

const kButtonTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);

const kItemTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.normal,
  color: Colors.black,
);

const kBlueTitleTextStyle = TextStyle(
  fontSize: 35.0,
  fontWeight: FontWeight.w500,
  color: Colors.lightBlueAccent,
);

const kTextFieldDecoration = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.lightBlueAccent,
      width: 2.0,
    ),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.lightBlueAccent,
      width: 4.0,
    ),
  ),
);

const kGeneralButtonStyle = ButtonStyle(
  backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
  shape: MaterialStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  ),
  textStyle: MaterialStatePropertyAll(kButtonTextStyle),
);
