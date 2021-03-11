import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue.shade400,
          appBar: AppBar(
            title: Text(
              'Ask Me Anything',
              style: TextStyle(fontSize: 30),
            ),
            backgroundColor: Colors.blue.shade900,
          ),
          body: HomePage(),
        ),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextButton(
          child: Image.asset("images/ball$ballNumber.png"),
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
        ),
      ),
    );
  }
}
