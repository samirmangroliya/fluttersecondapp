import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class ColumnExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: 400,
        color: Colors.lightGreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("A", style: TextStyle(fontSize: 25)),
            Text("B", style: TextStyle(fontSize: 25)),
            Text("C", style: TextStyle(fontSize: 25)),
            Text("D", style: TextStyle(fontSize: 25)),
            Text("E", style: TextStyle(fontSize: 25)),
            ElevatedButton(onPressed: (){}, child: Text("Click Me...")),
          ],
        ),
      ),
    );
  }
}
