import 'package:flutter/material.dart';
import '../main.dart';

class TextViewWidget extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("TextView Widget"),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          color: Colors.blueGrey,
          child: Center(
            child: Text(
              "Hello Developers",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
