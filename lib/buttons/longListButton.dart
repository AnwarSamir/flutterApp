import 'package:flutter/material.dart';
import 'package:flutterasi/app_screens/LongListScreen.dart';

class LongListButton extends StatelessWidget{
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
       child: Text("go to long list ",style: TextStyle(
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
      MaterialPageRoute(builder: (context) => LongListScreen()),
    );
  }

}