import 'package:flutter/material.dart';
import 'package:flutterasi/Models/User.dart';
import 'package:flutterasi/NetWorkLayer/NetworkLayer.dart';
import 'dart:convert';
import "package:progress_dialog/progress_dialog.dart";

class HttpJsonWIthListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  createState() => _Home();

}

class _Home extends State {
  var users = List<User>();
  var isLoading;
  var pr;

  _getUsers() {

    isLoading=true;
    Api.getUsers().then((response) {


      setState(() {
        isLoading=false;
        Iterable list = json.decode(response.body);
        users = list.map((model) => User.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();

    _getUsers();
  }

  dispose() {
    super.dispose();
  }

  @override
  build(context) {

    return Scaffold(

        appBar: AppBar(
          title: Text("User List"),
        ),
        body:isLoading?Center(
          child: CircularProgressIndicator(),
        ): ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            // you can return what you want like
            // Column(
            //              children: <Widget>[
            //                Divider(height: 5.0),
            //                ListTile(
            //                  title: Text('${posts[position].title}'),
            //                  subtitle: Text('${posts[position].body}'),
            //                  leading: ...,
            //                  onTap: () => _onTapItem(context, posts[position]),
            //                ),
            //              ],
            //            );
            //          }),
            return ListTile(

              trailing: Text(users[index].address.city),
              title: Text(users[index].name),
              onTap: () {
                //todo: Make on click here for item
              },
              leading: Icon(
                Icons.account_circle,
                color: Colors.green,
              ),
              subtitle: Text(users[index].email),
            );
          },
        ));
  }

}
