import 'package:flutter/material.dart';

class DataList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data"),
      ),
      body: ListView.builder(


          itemBuilder: (context, index) {
           return ListTile(
             title: Text("list data"),
           );
      }),
    );
  }
}
