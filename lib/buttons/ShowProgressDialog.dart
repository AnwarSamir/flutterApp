import 'dart:convert';

import 'package:flutter/material.dart';
import "package:progress_dialog/progress_dialog.dart";

/**
 * in order to show toast with an easy way you will add next line to your(progress_dialog: ^1.1.0+1) depen
 * */
class ShowProgressDialog extends StatelessWidget{
  ProgressDialog pr;
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

            pr = new ProgressDialog(context,ProgressDialogType.Normal);
            pr.show();

       },
       child: Text("Show Progress Dialog  ",style: TextStyle(
         decoration: TextDecoration.none,
         color: Colors.red
       ),),
      ),
    );
    
    
  }






}