import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class InkwellExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: InkWell(
          onTap: () {
            print("on Tapped Container");
          },
          onLongPress: () {
            print("on LongPress Container");
          },
          onDoubleTap: () {
            print("on DoubleTap Container");
          },
          child: Container(
            width: 300,
            height: 300,
            color: Colors.lightGreen,
            child: Center(
              child: InkWell(
                onTap: () {
                  print("on Tapped TextView");
                },
                child: Text(
                  "Click me",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
