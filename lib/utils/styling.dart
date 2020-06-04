import 'dart:ui';

import 'package:flutter/material.dart';

LinearGradient appGradient = LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter, colors: [
  Color.fromRGBO(255, 100, 0, 1.0),
  Color.fromRGBO(239, 0, 121, 1.0),
]);

TextStyle titleText = TextStyle(
  color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold
);
TextStyle messageText = TextStyle(
  color: Colors.white, fontSize: 15, fontWeight: FontWeight.normal
);
final TextStyle punchLine1TextStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.w800,
  color: Colors.white,
);

final TextStyle punchLine2TextStyle = punchLine1TextStyle.copyWith(color: Color(0xFF000000));

final TextStyle customTextStyle = punchLine1TextStyle.copyWith(color: Color(0xFF000000), fontSize: 18);


final TextStyle punchTextStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.w800,
  color: Color(0xFFFF4700),
);
