import 'package:flutter/material.dart';
import 'package:flutterasi/images/googleIcon.dart';
import 'package:flutterasi/buttons/bookButton.dart';
import 'package:flutterasi/buttons/longListButton.dart';
import 'package:flutterasi/buttons/LoginButton.dart';
import 'package:flutterasi/buttons/ShowToastButton.dart';
import 'package:flutterasi/app_screens/DealingWithImage.dart';
import 'package:flutterasi/buttons/MakeHttpRequestButton.dart';
import 'package:flutterasi/buttons/ShowProgressDialog.dart';
import 'package:flutterasi/buttons/BottomNavigationButton.dart';


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
                  DealingWithImage(),
                  bookButtons(),
                  LongListButton(),
                  LoginButton(),
                  ShowToastButton(),
                  MakeHttpRequestButton(),
                  ShowProgressDialog(),
                  BottomNavigationButton()
                ],
              ),
            )));
  }
}
