import 'package:flutter/material.dart';
import 'package:sidebar/views/Landing.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Foldable Sidebar',
  theme: ThemeData(
    indicatorColor: Colors.red,
  ),
  home: Landing(),
));