import 'package:flutter/material.dart';
import 'package:flutterasi/images/googleIcon.dart';
import 'package:flutterasi/buttons/bookButton.dart';
import 'package:flutterasi/buttons/longListButton.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      alignment: Alignment.center,
      color: Colors.red,
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: <Widget>[
        Text("Hi Anwar Samir ", style: TextStyle(
          fontSize: 30.0,
          decoration: TextDecoration.none,
          fontFamily: "Asul-Bold",
          color: Colors.white,
          fontWeight: FontWeight.w600
      )
        ),
         Text("Hi Anwar Samir 2", style: TextStyle(
              fontSize: 30.0,
              decoration: TextDecoration.none,
              fontFamily: "Asul-Bold",
              color: Colors.white,
              fontWeight: FontWeight.w600
          )

         ),
         Text("Hi Anwar Samir 4", style: TextStyle(
              fontSize: 30.0,
              decoration: TextDecoration.none,
              fontFamily: "Asul-Bold",
              color: Colors.white,
              fontWeight: FontWeight.w600
          )
          ),
          Row(
            children: <Widget>[
              googlePlusIcon(),
              Text("Login with google plus",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  decoration: TextDecoration.none
                ),
              ),

            ],
          ),
          bookButtons(),
          LongListButton()
        ],

      ),
    ));
  }
}
