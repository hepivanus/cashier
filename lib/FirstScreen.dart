import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kasir/barang.dart';
import 'package:kasir/datauser.dart';
import 'package:kasir/hadiah.dart';
import 'package:kasir/transaksi.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key key}) : super(key: key);

  Widget customButton(String btnCustom, Color buttonColor, Color textColor,
      BuildContext context, Widget widget) {
    return Container(
      child: RaisedButton(
        //splashColor: Colors.white,
        color: buttonColor,
        padding: EdgeInsets.only(bottom: 40, top: 40, left: 10, right: 20),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => widget));
        },
        child: Text(
          "$btnCustom",
          style: TextStyle(
            fontSize: 20.0,
            // fontStyle: FontStyle.italic,
            //color: textColor,
            // fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget headerMainMenu() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.6, 0.9],
            colors: [
              Color.fromRGBO(12, 235, 235, 1),
              Color.fromRGBO(32, 227, 178, 1),
              Color.fromRGBO(41, 225, 198, 1),
            ],
          )),
      child: Text("Satu"),
      //color: Colors.blue,
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom: 170),
      //decoration: BoxDecoration(),
    );
  }

  Widget userButton(String btnCustom, Color buttonColor, Color textColor,
      BuildContext context) {
    return Container(
      color: buttonColor,
      padding: EdgeInsets.only(bottom: 40, top: 40, left: 30, right: 40),
      child: RaisedButton(
        //splashColor: Colors.white,
        child: Text(
          "$btnCustom",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Hadiah()));
        },
        //MaterialPageRoute(builder: (context) => DataUser()));
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(children: <Widget>[
        headerMainMenu(),
        Expanded(child: Container()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            customButton(
                "User Data", Colors.blue, Colors.black, context, DataUser()),
            customButton(
                "Transaksi", Colors.blue, Colors.black, context, Transaksi()),
            customButton("Barang", Colors.blue, Colors.black, context, Barang())
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customButton(
                "Hadiah", Colors.blue, Colors.orange, context, Hadiah())
          ],
        ),
        SizedBox(
          height: 120,
        ),
        // Row(
        //   children: [userButton("Hadiah", Colors.black, Colors.black, context)],
        // ),
        // SizedBox(
        //   height: 3,
        // ),
      ]),
    ));
  }
}

// //class DataUser extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('User Date'),
//         ),
//         body: Center(
//             child: RaisedButton(
//                 //splashColor: Colors.white,
//                 child: Text('Open route'),
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: DataUser));
//                   //MaterialPageRoute(builder: (context) => DataUser()));
//                 })) //child: child,
//         );
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();

//     // theme: ThemeData(
//     //   primaryColor: Colors.yellow,
//     //   //primarySwatch: Colors.black87,
//     //   //visualDensity: VisualDensity.adaptivePlatformDensity,
//     // ),
//     // throw UnimplementedError();
//   }
// }
