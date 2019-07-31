import 'package:flutter/material.dart';

class NavigationDrawerScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer "),
      ),
      drawer: Drawer( child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Anwar samir "),
            accountEmail: Text("anwarmadkour95@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor:
              Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.blue
                  : Colors.white,
              child: Text(
                "A",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            title: Text("Home "),
            leading: Icon(Icons.home),
            onTap: ()
            {
              /** TODO : Make click here for items ...... */
              debugPrint("Home Clicked");
            },
          ),
          ListTile(
            title: Text("Profile"),
            leading: Icon(Icons.account_circle),
            onTap: ()
            {

            },
          ),ListTile(
            title: Text("settings"),
            leading: Icon(Icons.settings),
            onTap: ()
            {

            },
          ),
        ],
      ),),//this will just add the Navigation Drawer Icon
    );
  }

}