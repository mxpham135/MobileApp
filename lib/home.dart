import 'package:demo1/forum.dart';
import 'package:demo1/user_profile.dart';
import 'package:demo1/article.dart';
import 'package:demo1/auth.dart';
import 'package:demo1/login_page.dart';
import 'package:demo1/news_feed.dart';
import 'package:flutter/material.dart';
import 'auth.dart';
import 'login_page.dart';
import 'news_feed.dart';
import 'user_profile.dart';

class HomePage extends StatefulWidget {
  HomePage({this.auth, this.onSignedOut});
  final BaseAuth auth;
  final VoidCallback onSignedOut;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _signOut() async {
    try {
      await widget.auth.signOut();
      widget.onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> _widgetOptions = <Widget>[
    NewHomePage(),
    UserProfile(),
    Forum()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Routi',
          style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 36,
              fontStyle: FontStyle.italic),
        ),
        actions: <Widget>[
          new FlatButton(
            onPressed: _signOut,
            child: new Text('Logout',
                style: new TextStyle(fontSize: 17.0, color: Colors.red)),
          )
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text('Forum'),
          ),
        ],
        selectedItemColor: Colors.amber[800],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
