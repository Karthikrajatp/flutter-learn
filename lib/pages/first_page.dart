// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("1st Page")),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            DrawerHeader(
              // ignore: prefer_const_constructors
              child: Icon(
                Icons.favorite,
                size:48,
              ),
              ),

              //home page list tile
              ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(Icons.home),
                // ignore: prefer_const_constructors
                title: Text("H O M E"),
                onTap: () {
                  Navigator.pop(context);
                  // GO TO HOME PAGE
                  Navigator.pushNamed(context, "/homepage");
                },
              ),

              //setting page list tile
              ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(Icons.settings),
                // ignore: prefer_const_constructors
                title: Text("S E T T I N G S"),
                onTap: () {
                  Navigator.pop(context);
                  // GO TO SETTINGS PAGE
                  Navigator.pushNamed(context, "/settingspage");
                },
              ),

          ],
          )
      )
    );
  }
}
