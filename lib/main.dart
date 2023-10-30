// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        body: Column(
          children: [
            //1stBox
            Expanded(
              child: Container(
                color: Colors.deepPurple,
                ),
            ),
            
            //2ndBox
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.deepPurple[400],
                ),
            ),

            //3rdBox
            Expanded(
              child: Container(
                color: Colors.deepPurple[200],
                ),
            )

          ],
          ),
      ),
    );
  
}
}