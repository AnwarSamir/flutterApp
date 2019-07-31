import 'package:flutter/material.dart';
import 'package:flutterasi/app_screens/BottomNavigationScreen.dart';
import 'package:flutterasi/app_screens/LoginFormScreen.dart';
import 'package:flutterasi/app_screens/NavigationDrawerScreen.dart';

class NavigationDrawerButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 60,right: 60),
      child: RaisedButton(
        color: Colors.white,
        elevation: 5,
        onPressed: (){
          gotoNextScreen(context);
        },
        child: Text("Navigation Drawer ",style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.red
        ),),
      ),
    );


  }

  void gotoNextScreen(BuildContext  context)
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NavigationDrawerScreen()),
    );
  }

}