import 'package:flutter/material.dart';
import 'package:flutterasi/app_screens/LoginFormScreen.dart';

class LoginButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 60,right: 60),
      child: RaisedButton(
        color: Colors.white,
        elevation: 5,
        onPressed: (){
          gotoNextScreen(context);
        },
        child: Text("Login Form",style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.green
        ),),
      ),
    );


  }

  void gotoNextScreen(BuildContext  context)
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginFormScreen()),
    );
  }

}