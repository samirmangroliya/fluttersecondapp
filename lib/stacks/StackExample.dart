import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class StackExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text("ListView")),
      body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(width: 100, height: 100, color: Colors.blue),
            Positioned(
              left: 20,
              top: 20,
              child: Container(width: 100, height: 100, color: Colors.green),
            ),
            Positioned(
              left: 40,
              top: 40,
              child: Container(width: 100, height: 100, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
