import 'package:rezadrawer2/end2.dart';
import 'package:rezadrawer2/profile.dart';
import 'package:flutter/material.dart';
import 'package:rezadrawer2/spaceBe.dart';
import 'package:rezadrawer2/stretch.dart';

import 'contact.dart';
import 'home.dart';
import 'start.dart';
import 'spaceAr.dart';
import 'spaceBe.dart';
import 'stretch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String home = Home.routeName;
  static const String profile = Profile.routeName;
  static const String end2 = End.routeName;
  static const String contacts = Contact.routeName;
  static const String start = Start.routeName;
  static const String spaceAr = Around.routeName;
  static const String spaceBe = Betwen.routeName;
  static const String stretch = Stre.routeName;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        home: (context) => Home(),
        profile: (context) => Profile(),
        end2: (context) => End(),
        contacts: (context) => Contact(),
        start: (context) => Start(),
        spaceAr: (context) => Around(),
        spaceBe: (context) => Betwen(),
        stretch: (context) => Stre(),
      },
      home: Home(),
    );
  }
}
