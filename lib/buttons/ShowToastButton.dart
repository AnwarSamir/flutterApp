import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:flutterasi/Models/Post.dart';
import 'package:http/http.dart' as http;

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

        ShowToast(context, "Message Name --->");
        fetchPost();
       },
       child: Text("Show Toast  ",style: TextStyle(
         decoration: TextDecoration.none,
         color: Colors.red
       ),),
      ),
    );
    
    
  }

  void ShowToast(BuildContext  context,var message)
  {
    Toast.show(message, context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);

  }


  Future<Post> fetchPost() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/posts/1');

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      debugPrint("From 200");
      return Post.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      debugPrint("From Exp");
      throw Exception('Failed to load post');

    }
  }


}