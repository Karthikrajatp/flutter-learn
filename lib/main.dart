// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final List names = ["Karthik","Naveen","Dharshan","Esanth","Sanjith","Raghu"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        body: Center(
          child: GestureDetector(
            onTap: () {
              //do something
            },
            child: Container(
              height: 200,
              width:200,
              color: Colors.deepPurple[300],
              child: Center(child:Text("Thats me!")),
            ),
          ),
        )
      )
    );
  }
}
