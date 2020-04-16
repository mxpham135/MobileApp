import 'package:demo1/home.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'auth.dart';
import 'root.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Routi',
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: RootPage(auth: new Auth())
        //LoginPage(auth: new Auth())
        );
  }
}
