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
        body: GridView.builder(
          itemCount: 64,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
           itemBuilder: (content,index)=>Container(
            color: Colors.deepPurple,
            margin: EdgeInsets.all(2),
           ))
      ),
    );
  }
}
