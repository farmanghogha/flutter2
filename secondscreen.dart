import 'package:flutter/material.dart';
import 'package:fluttermultiscreen/listview.dart';

import 'cardetails.dart';

class SecondScreen extends StatelessWidget{

  List Data=[];

  SecondScreen(this.Data);

  TextEditingController carname=new TextEditingController();
  TextEditingController carprice=new TextEditingController();



  @override
  Widget build(BuildContext context) {

    CarData car=Data[0];
    carname.text=car.carname;
    carprice.text=car.carprice.toString();

    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
              child: TextField(
                controller: carname,
                decoration: InputDecoration(hintText: "Car Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 30),
              child: TextField(
                controller: carprice,
                decoration: InputDecoration(hintText: "Car Price"),
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {

                }, child: Text("Priveous")),
                ElevatedButton(onPressed: () {

                }, child: Text("<")),
                ElevatedButton(onPressed: () {

                }, child: Text(">")),
                ElevatedButton(onPressed: () {

                }, child: Text("Last")),
              ],
            ),
            SizedBox(height: 20,),
            Center(
              child: ElevatedButton(onPressed: () {

                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return DataList();
                },));

              }, child: Text("Next")),
            )
          ],
        )
    );
  }

}