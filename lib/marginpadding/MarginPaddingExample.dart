import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class MarginPaddingExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Margin Padding"),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        color: Colors.blueGrey,
        margin: EdgeInsets.all(12),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            "Flutter Example",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
