import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputBarang extends StatefulWidget {
  InputBarang({Key key}) : super(key: key);

  @override
  _InputBarangState createState() => _InputBarangState();
}

class _InputBarangState extends State<InputBarang> {
  var finaldate;

  final TextEditingController _dobController = new TextEditingController();

  void callDatePicker() async {
    var order = await getDate();
    setState(() {
      String formattedDate = DateFormat('yyyy-MM-dd').format(order);
      _dobController.text = formattedDate;
    });
  }

  Future<DateTime> getDate() {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
  }

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
                hintText: "Masukan Harga",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Harga",
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
                hintText: "Masukan Jumlah",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Jumlah",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            TextFormField(
              showCursor: true,
              readOnly: true,
              onTap: () => callDatePicker(),
              controller: _dobController,
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
