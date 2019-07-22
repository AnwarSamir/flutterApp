import 'package:flutter/material.dart';
import 'package:flutterasi/images/loginIcon.dart';

class LoginFormScreen extends StatelessWidget {

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
  final emailController = TextEditingController();
  final passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Long List")),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: new Center(
            child: new Column(
              children: <Widget>[
                loginIcon(),
                new TextField(
                    controller: emailController,
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                        hintText: "Enter Your Email Address",
                        contentPadding: EdgeInsets.all(12.0),
                        focusColor: Colors.green)),
                Container(
                    margin: EdgeInsets.only(top: 16.0),
                    child: new TextField(obscureText: true,
                      controller: passwordController,
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                        hintText: "Enter your Password ",
                        focusColor: Colors.green,
                        contentPadding: EdgeInsets.all(12.0),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 32.0),
                    child: RaisedButton(

                      child: Text("Login"),
                      elevation: 5,
                      textColor: Colors.white,
                      color: Colors.green,
                      onPressed: (){
                        checkUser(emailController.text,passwordController.text,context);
                      },
                    )
                ),Container(
                  child: Text("Have No Account ! Sign up now .",
                    style: new TextStyle(
                      color: Colors.red
                    ),
                  ),
                  margin: EdgeInsets.only(top: 24.0),
                )
              ],
            )),
      ),
    );
  }
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

   checkUser(String mail,String pass,BuildContext context) {
    if(!mail.isEmpty && !pass.isEmpty)
      {
        if(mail=="anwar" && pass=="123")
        {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the user has entered by using the
                // TextEditingController.
                content: Text("Welcome "+mail),
              );
            },
          );
        }
        else
        {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the user has entered by using the
                // TextEditingController.
                content: Text("Mail or pass not true ",style: TextStyle(color: Colors.red),),
              );
            },
          );
        }
      }

  }

}




