import 'package:flutter/material.dart';
import 'home.dart';


class LongListScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

        title: "Asi",
        debugShowCheckedModeBanner: false,
        home: home()
    );
  }



}
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Long List"),
          leading: IconButton(icon:Icon(Icons.arrow_back),
      onPressed:() => Navigator.pop(context, false),
    )
    ),
      body: _getWidgitList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          debugPrint("Fab clicked");
        },
        tooltip: "add one or more ",
      ),
    );
  }


  List<String> _getStrinList()
  {
    var items =List<String>.generate(20,(counter)=>"item $counter");
    return items;
  }

  Widget _getWidgitList()
  {
    var itemsList=_getStrinList();
    var listView=ListView.builder(
        itemCount: itemsList.length,
        itemBuilder:(context ,index){
      return ListTile(

        leading: Icon(Icons.bookmark),
        title: Text(itemsList[index]),
        onTap: (){
          debugPrint("yep working");
          _showSnakBar(itemsList[index], context);
        },
      );
    });
    return listView;
  }

  void _showSnakBar(var text,BuildContext context){
    var snakBar=new SnackBar(content:Text(text));
    Scaffold.of(context).showSnackBar(snakBar);
  }
}
