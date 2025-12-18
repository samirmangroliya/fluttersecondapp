import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class WrapWidgetExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text("ListView")),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.spaceEvenly,
          children: [
            Container(width: 70, height: 70, color: Colors.green),
            Container(width: 70, height: 70, color: Colors.red),
            Container(width: 70, height: 70, color: Colors.yellow),
            Container(width: 70, height: 70, color: Colors.amber),
            Container(width: 70, height: 70, color: Colors.blue),
            Container(width: 70, height: 70, color: Colors.deepOrange),
            Container(width: 70, height: 70, color: Colors.lightGreen),
            Container(width: 70, height: 70, color: Colors.orange),
            Container(width: 70, height: 70, color: Colors.blueGrey),
            Container(width: 70, height: 70, color: Colors.purple),
            Container(width: 70, height: 70, color: Colors.lightGreen),
            Container(width: 70, height: 70, color: Colors.orange),
            Container(width: 70, height: 70, color: Colors.blueGrey),
            Container(width: 70, height: 70, color: Colors.lightGreen),
            Container(width: 70, height: 70, color: Colors.orange),
            Container(width: 70, height: 70, color: Colors.blueGrey),
            Container(width: 70, height: 70, color: Colors.purple),
            Container(width: 70, height: 70, color: Colors.purple),
          ],
        ),
      ),
    );
  }
}
