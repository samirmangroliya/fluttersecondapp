import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class ListViewExample extends State<MyHomePage> {
  static const divider = Divider(thickness: 2, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text("ListView")),
      body: ListView(
        /*scrollDirection: Axis.horizontal,
        reverse: true,*/
        children: [
          Text(
            "List Item 1",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
          ),
          divider,
          Text(
            "List Item 2",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
          ),
          divider,
          Text(
            "List Item 3",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
          ),
          divider,
          Text(
            "List Item 4",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
          ),
          divider,
          Text(
            "List Item 5",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
