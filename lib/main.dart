//import 'package:kasirku/login.dart';
import 'package:flutter/material.dart';
//import 'package:kasir/datauser.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

//  @override
  //Widget build() => widget.build(this);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginPage(),
        title: 'Login',
        routes: <String, WidgetBuilder>{
          '/LoginPage': (BuildContext context) => LoginPage(),
        });
  }
}
