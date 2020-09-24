import 'package:flutter/material.dart';
import 'package:kasir/InputBarang.dart';

class Barang extends StatefulWidget {
  @override
  _BarangState createState() => _BarangState();
}

class _BarangState extends State<Barang> {
  List<String> languages = [
    "Sampurna",
    "Pensil",
    "Gelas Kaca",
    "Piring",
    "Sabun",
    "Sandal",
    "Odol",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => InputBarang()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Colors.grey[300],
        child: ListView.builder(
          itemCount: languages.length,
          itemBuilder: (BuildContext context, int index) {
            final number = index + 1;
            final language = languages[index].toString();
            return Card(
              child: ListTile(
                leading: Text(number.toString()),
                title: Text(language),
                trailing: Icon(Icons.check),
              ),
            );
          },
        ),
      ),
    );
  }
}
