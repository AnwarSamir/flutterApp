import 'package:http/http.dart' as http;
import 'package:progress_dialog/progress_dialog.dart';
import 'dart:async';
/**
    We’re gonna pull user data from https://jsonplaceholder.typicode.com/users which gives us the following JSON.
    [
    {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
    "street": "Kulas Light",
    "suite": "Apt. 556",
    "city": "Gwenborough",
    "zipcode": "92998-3874",
    "geo": {
    "lat": "-37.3159",
    "lng": "81.1496"
    }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
    "name": "Romaguera-Crona",
    "catchPhrase": "Multi-layered client-server neural-net",
    "bs": "harness real-time e-markets"
    }
    },
    ...
    ]
 */
const  baseUrl = "https://jsonplaceholder.typicode.com";
class Api{


  static Future getUsers(){
    var url =baseUrl+"/users";
    return http.get(url);
  }

}


