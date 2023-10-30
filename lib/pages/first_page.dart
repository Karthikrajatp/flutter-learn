// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //this keeps track of the current page to display
  int _selectedIndex = 0;

  //this method used to update the new selected index 
  void _navigatorBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //the pages we have in our app
  final List _pages = [
    //homepage
    const HomePage(),
    //profilepage
    const ProfilePage(),
    //settingspage
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("1st Page")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigatorBottomBar,
        items: const [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
             label: 'Home',
             ),
          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
           label: 'Profile',
           ),
          //settings
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
               label: 'Settings',
               ),
        ],
      ),
    );
  }
}
