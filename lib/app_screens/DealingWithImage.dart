import 'package:flutter/material.dart';
import 'package:flutterasi/images/googleIcon.dart';
class DealingWithImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
    children: <Widget>[
    Text("This a flutter app will hold some small exmples to discover what that and how it work ..  ",
    style: TextStyle(
    fontSize: 16.0,
    decoration: TextDecoration.none,
    fontFamily: "Asul-Bold",
    color: Colors.black,
    fontWeight: FontWeight.w200)),
    Row(
    children: <Widget>[
    googlePlusIcon(),
    Container(
    margin: EdgeInsets.only(left: 16.0),
    child:Text("Login with google plus",
    style: TextStyle(
    fontSize: 20,
    color: Colors.black,
    decoration: TextDecoration.none))),
    ],
    );
  }

}