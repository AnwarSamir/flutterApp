import "package:flutter/material.dart";
import 'package:flutterasi/app_screens/first_screen.dart';
import 'package:flutterasi/app_screens/home.dart';

// main is our entry open
void main() => runApp(new myFlutterApp());

class myFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

        title: "Asi",
        debugShowCheckedModeBanner: false,
        home: home(),

    );
  }
}
