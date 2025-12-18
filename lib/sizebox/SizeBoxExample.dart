import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class SizeBoxExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text("Scrollview")),
      body: Wrap(
        children: [
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: () {}, child: Text("Button")),
          ),
          SizedBox(width: 20),
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: () {}, child: Text("Button")),
          ),
          SizedBox(width: 20),
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: () {}, child: Text("Button")),
          ),
        ],
      ),
    );
  }
}
