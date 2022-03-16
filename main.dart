import 'package:flutter/material.dart';
import 'package:fluttermultiscreen/secondscreen.dart';


import 'cardetails.dart';
import 'secondscreen.dart';

void main() {
  runApp( new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}


class MainScreen extends StatefulWidget{

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  TextEditingController carname=new TextEditingController();
  TextEditingController carprice=new TextEditingController();

  bool check1=false;
  bool check2=false;
  bool check3=false;

  double slidevalue=5.0;

  List Data=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
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
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Checkbox(value: check1, onChanged: (value) {
                  check1=value!;
                  setState(() {

                  });
                },
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text("SPORTS CAR",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),

          Row(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Checkbox(value: check2, onChanged: (value) {
                  check2=value!;
                  setState(() {

                  });
                },
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text("COUPE",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),

          Row(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Checkbox(value: check3, onChanged: (value) {
                  check3=value!;
                  setState(() {

                  });
                },
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text("SADAN",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Slider(
              label: "Everage:",
              max: 10,
              min: 1,

              value: slidevalue, onChanged: (value) {
              slidevalue=value;
              setState(() {

              });
            },),
          ),

          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(150, 50),
                  maximumSize: const Size(200, 50),
                ),
                onPressed: () {
                  CarData car=new CarData();
                  car.carname=carname.text;
                  car.carprice=double.parse(carprice.text);

                  Data.add(car);

                  carname.text="";
                  carprice.text="";


                }, child: Text("Save")),
          ),
          SizedBox(height: 20,),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(150, 50),
                  maximumSize: const Size(200, 50),
                ),
                onPressed: () {

                  Navigator.push(context,MaterialPageRoute(builder: (context) {
                    return SecondScreen(Data);
                  },));

                }, child: Text("Next")),
          ),
        ],
      ),
    );
  }
}


//singlechilescrollview
//
//
//
//
//listview
//
//     --  listtile
//          --subtitle
//          --leading    left site
//          --trailing   right site
//          --tilecolor
//          --ontap()
//          --longpress()

// listtile.dividetiles

//listviw.builder

  //itemcount   return

