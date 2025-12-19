import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class ListWheelScrollViewExample extends State<MyHomePage> {
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade200,
        title: Text("3D List", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 200.0,
          children: arrIndex
              .map(
                (value) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Center(child: Text("$value", style: TextStyle(color: Colors.white, fontSize: 21))),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
