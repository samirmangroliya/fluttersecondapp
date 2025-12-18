import 'package:flutter/material.dart';
import '../main.dart';

class GridViewExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.amber,
      Colors.grey,
      Colors.green,
      Colors.blue,
      Colors.pink,
      Colors.red,
      Colors.lightGreen,
      Colors.teal,
      Colors.lightGreen,
      Colors.black,
      Colors.brown,
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Image Widget"),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 100,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,

        children: [
          Container(color: arrColors[0]),
          Container(color: arrColors[1]),
          Container(color: arrColors[2]),
          Container(color: arrColors[3]),
          Container(color: arrColors[4]),
          Container(color: arrColors[5]),
          Container(color: arrColors[6]),
          Container(color: arrColors[7]),
          Container(color: arrColors[8]),
          Container(color: arrColors[9]),
          Container(color: arrColors[10]),
        ],
      ),
    );
  }
}
