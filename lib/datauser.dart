import 'package:flutter/material.dart';
import 'package:kasir/InputUser.dart';

class DataUser extends StatefulWidget {
  @override
  _DataUserState createState() => _DataUserState();
}

class _DataUserState extends State<DataUser> {
  List<String> languages = [
    "Jober",
    "Alfred",
    "Arianto",
    "Hendri",
    "Ayu",
    "Anselmus",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => InputUser()));
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
