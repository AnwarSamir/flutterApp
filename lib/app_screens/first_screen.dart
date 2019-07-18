import 'dart:math';

import 'package:flutter/material.dart';

class first_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
        color: Colors.amberAccent,
        child:Center(
          child: Text(
            "Your luky number is  ${lukyNum()}",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white,fontSize: 20.0),
          ),
        )
    );
  }

  int lukyNum()
  {
    var random= Random();
    return random.nextInt(100);

  }

}