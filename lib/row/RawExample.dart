import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class RawExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 500,
        color: Colors.lightGreen,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("A", style: TextStyle(fontSize: 25)),
            Text("B", style: TextStyle(fontSize: 25)),
            Text("C", style: TextStyle(fontSize: 25)),
            Text("D", style: TextStyle(fontSize: 25)),
            Text("E", style: TextStyle(fontSize: 25)),
            ElevatedButton(onPressed: (){

            }, child: Text("Click Me..."))
          ],
        ),
      ),
    );
  }
}
