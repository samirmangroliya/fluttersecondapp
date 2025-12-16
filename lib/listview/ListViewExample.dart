import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class ListViewExample extends State<MyHomePage> {
  static const gap16 = SizedBox(height: 16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text("ListView")),
      body: ListView(
        /*scrollDirection: Axis.horizontal,
        reverse: true,*/
        children: [
          gap16,
          Text(
            "List Item 1",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
          ),
          gap16,
          Text(
            "List Item 2",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
          ),
          gap16,
          Text(
            "List Item 3",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
          ),
          gap16,
          Text(
            "List Item 4",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
          ),
          gap16,
          Text(
            "List Item 5",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
