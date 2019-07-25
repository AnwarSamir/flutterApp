import 'package:flutter/material.dart';
import 'package:flutterasi/images/googleIcon.dart';
import 'package:flutterasi/buttons/bookButton.dart';
import 'package:flutterasi/buttons/longListButton.dart';
import 'package:flutterasi/buttons/LoginButton.dart';
import 'package:flutterasi/buttons/ShowToastButton.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

        color: Colors.white,
        child: Scaffold(

            appBar: AppBar(title: Text("Flutter App")),
            body: Container(
              margin: EdgeInsets.all(16.0),
              alignment: Alignment.center,

              child: Column(
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
                  ),
                  bookButtons(),
                  LongListButton(),
                  LoginButton(),
                  ShowToastButton()
                ],
              ),
            )));
  }
}
