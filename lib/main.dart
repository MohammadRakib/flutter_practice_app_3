import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.indigo,

            ),
          ),
        ),
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}

