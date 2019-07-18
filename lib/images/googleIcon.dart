import 'package:flutter/material.dart';

class googlePlusIcon extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   AssetImage  assetImage=new AssetImage("images/google_plus_icon.png");
   Image googleplusImage=new Image(image: assetImage,width: 25,height: 25);// here you can add image width and hight

    return Container(child: googleplusImage);
  }
}