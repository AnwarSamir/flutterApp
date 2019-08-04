import 'package:flutter/material.dart';
import 'package:flutterasi/images/loginIcon.dart';
import 'package:shared_preferences/shared_preferences.dart';

/**
    Inorder to save data to shared pref in flutter use next lin --->(shared_preferences: ^0.5.0)
 * */
class SharedPrefScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Asi", debugShowCheckedModeBanner: false, home: MyCustomForm());
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final someTextController = TextEditingController();
  String dataFromShared = "Text will be here ";
  String appBarName = "Shared Pref ";


  // get data from shared and assign it to value
  setData() {
    loadData().then((value) {
      setState(() {
        dataFromShared = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(appBarName)),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: new Center(
            child: new Column(
              children: <Widget>[

            Container(
                margin:EdgeInsets.all(20.0),
                child: Text(dataFromShared)
            ),
                new TextField(
                    controller: someTextController,
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                        hintText: "Enter Someting to save it ",
                        contentPadding: EdgeInsets.only(
                            left: 12.0, top: 30.0, right: 12.0, bottom: 20.0),
                        focusColor: Colors.green)),
                Container(
                    margin: EdgeInsets.only(top: 32.0),
                    child: RaisedButton(

                      child: Text("Save Data "),
                      elevation: 5,
                      textColor: Colors.white,
                      color: Colors.green,
                      onPressed: () {
                        //TODO:Save Data in Shared pref
                        saveData();
                      },
                    )
                ), Container(
                    margin: EdgeInsets.only(top: 32.0),
                    child: RaisedButton(

                      child: Text("Raed Data "),
                      elevation: 5,
                      textColor: Colors.white,
                      color: Colors.green,
                      onPressed: () {
                        //TODO:Read Saved  Data From  Shared pref

                        setData();
                      },
                    )
                )
              ],
            )),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    someTextController.dispose();
    super.dispose();
  }
  // save data to shared pref
  Future<bool> saveData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    debugPrint("From Saved ");
    return await preferences.setString("txt", someTextController.text);
  }


  // get data from shared pref
  Future<String> loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    debugPrint("Get  Saved ");
    return preferences.getString("txt");
  }

}



