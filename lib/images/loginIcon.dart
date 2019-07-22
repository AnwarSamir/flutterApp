import 'package:flutter/material.dart';

class loginIcon extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   AssetImage  assetImage=new AssetImage("images/loginicon.png");
   Image googleplusImage=new Image(image: assetImage,width: 95,height: 95);// here you can add image width and hight

    return Container(child: googleplusImage,margin: EdgeInsets.all(40.0),);
  }
}