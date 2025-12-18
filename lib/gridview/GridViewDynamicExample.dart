import 'package:flutter/material.dart';
import '../main.dart';

class GridViewDynamicExample extends State<MyHomePage> {
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
      Colors.orange,
      Colors.black,
      Colors.purple,
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("GridView Dynamic Example"),
      ),
      body: GridView.builder(
        itemBuilder: (context, index) {
          return Container(color: arrColors[index]);
        },
        itemCount: arrColors.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}
