import 'package:flutter/material.dart';
import 'package:project/pages/profile.dart';
import 'package:project/pages/map.dart';


void main() => runApp( MaterialApp(
  initialRoute: '/',
  routes: {

    '/': (context) => Myapp(),
    '/map': (context) => BackgroundMap(),
  },
));





