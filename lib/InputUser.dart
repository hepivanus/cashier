import 'package:flutter/material.dart';

// void main() {
//   runApp(new MaterialApp(
//     title: "My Apps",
//     home: new Myapp(),
//   ));
// }

class InputUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Data User"),
      ),
      body: Container(
        padding: EdgeInsets.all(7.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                hintText: "Masukan ID",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "ID",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                hintText: "Masukan Nama",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Nama",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                hintText: "Masukan Alamat",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Alamat",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                hintText: "Masukan No handphone",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "No handphone",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            RaisedButton(
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
