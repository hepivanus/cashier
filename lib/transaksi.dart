import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       title: "Tutorial",
//       home: Home(),
//     ));

class Transaksi extends StatefulWidget {
  @override
  _TransaksiState createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Masukan Transaksi"),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              DropdownButton(
                  dropdownColor: Colors.orange,
                  value: _value,
                  items: [
                    DropdownMenuItem(
                      child: Text("Jober"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Alfred"),
                      value: 2,
                    ),
                    DropdownMenuItem(child: Text("Arianto"), value: 3),
                    DropdownMenuItem(child: Text("Hendri"), value: 4),
                    DropdownMenuItem(child: Text("Ayu"), value: 5),
                    DropdownMenuItem(child: Text("Aselmus"), value: 6)
                  ],
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  }),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Masukan Member",
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: "Member",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              DropdownButton(
                  dropdownColor: Colors.orange,
                  value: _value,
                  items: [
                    DropdownMenuItem(
                      child: Text("Sampurna"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Pensil"),
                      value: 2,
                    ),
                    DropdownMenuItem(child: Text("Gelas Kaca"), value: 3),
                    DropdownMenuItem(child: Text("Piring"), value: 4),
                    DropdownMenuItem(child: Text("Piring"), value: 5),
                    DropdownMenuItem(child: Text("Sabun"), value: 6),
                    DropdownMenuItem(child: Text("Sandal"), value: 7),
                    DropdownMenuItem(child: Text("Odol"), value: 8)
                  ],
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  }),
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
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Masukan Total Harga",
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: "Total Harga",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Total Banyar",
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: "Total Banyar",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Kembalian",
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: "Kembalian",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              RaisedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {},
              ),
              RaisedButton(
                child: Text(
                  "Pring",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
