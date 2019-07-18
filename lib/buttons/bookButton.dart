import 'package:flutter/material.dart';

class bookButtons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 60,right: 60),
      child: RaisedButton(
        color: Colors.white,
       elevation: 5,
       onPressed: (){
        showAlert(context);
       },
       child: Text("Book Now",style: TextStyle(
         decoration: TextDecoration.none,
         color: Colors.red
       ),),
      ),
    );
    
    
  }

  void showAlert(BuildContext  context)
  {
    var alertDialog=new AlertDialog(title: Text("Are you sure you want to book now"),
    content: Text("if you sure click yes "),
    );
    showDialog(context: context,
    builder:  (BuildContext context){ return alertDialog;}

    );
  }

}