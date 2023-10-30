import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("1st Page")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go To Second Page"),
          onPressed: () {
            //navigate to second page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondPage(),
                ),
                );
          }),
      ),
    );
  }
}