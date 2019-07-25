import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

/**
 * in order to show toast with an easy way you will add next line to your(fluttertoast: ^3.1.0)
 * */
class ShowToastButton extends StatelessWidget{
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

         ShowToast(context);
       },
       child: Text("Show Toast  ",style: TextStyle(
         decoration: TextDecoration.none,
         color: Colors.red
       ),),
      ),
    );
    
    
  }

  void ShowToast(BuildContext  context)
  {
    Toast.show("this a toast for test ", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);

  }

}