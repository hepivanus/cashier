//import 'dart:async';

import 'package:flutter/cupertino.dart';
//import 'dart:ui';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FirstScreen.dart';
//import 'package:kasir/FirstScreen.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.blueGrey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                //color: Colors.black,
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Selamat Dateng, Silakalakan Masuk",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                // obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow)),
                  prefixIcon: Icon(
                    Icons.person,
                    size: 40,
                  ),
                  hintText: "Masukan User",
                  hintStyle: TextStyle(color: Colors.yellow),
                  labelText: "User Name",
                  labelStyle: TextStyle(color: Colors.yellow),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow)),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 40,
                  ),
                  hintText: "Masukan Password",
                  hintStyle: TextStyle(color: Colors.yellow),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.yellow),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.yellow,
                elevation: 5,
                child: Container(
                  height: 50,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FirstScreen()));
                    },
                    child: Center(
                        child: Text(
                      "Masuk",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}

// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Screen'),
//       ),
//       body: RaisedButton(
//         //color: Colors.orange,
//         onPressed: () {
//           Navigator.pushNamed(context, '/DataUser');
//         },
//         color: Colors.yellow,
//         child: Column(
//           children: [],
//         ),
//       ),
//       //child: child,
//     );
//   }
// }

// // Widget customButton(String btnCustom, Color btnColor, Color textColor) {
// //   return MaterialApp();
// // }

// class Transaksi extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Transaksi'),
//       ),
//       body: RaisedButton(
//         color: Colors.yellow,
//         onPressed: () {},
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Transaksi(),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//     //child: child,
//   }
// }

// class DataUser extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User'),
//       ),
//       body: RaisedButton(
//         color: Colors.black,
//         onPressed: () {},
//         //child: IconButton(icon: Icon(Icons.account_circle, size: 50,),),
//         child: Column(
//           children: [],
//         ),
//       ),
//       //child: child,
//     );
//   }
// }
