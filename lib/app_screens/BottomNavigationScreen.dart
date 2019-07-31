import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatelessWidget{
  static const String _title = 'Bottom Navigation';
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return MaterialApp(
      title: _title,

      debugShowCheckedModeBanner: false,
      home: bottomNav(),
    );
  }



}

class bottomNav extends StatefulWidget {
  bottomNav({Key key}) : super(key: key);

  @override
  _bottomNav createState() => _bottomNav();

}

class _bottomNav  extends State<bottomNav> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        /** if you remove next line more than 3 items will not appear
         * TODO: Never remove it if you will use more than three items
         * */
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.amberAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}