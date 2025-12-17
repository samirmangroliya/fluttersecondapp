import 'package:flutter/material.dart';
import '../main.dart';

class ExpandedWidgetExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Container"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(height: 100, color: Colors.limeAccent),
            ),
            Expanded(
              flex: 2,
              child: Container(height: 100, color: Colors.redAccent),
            ),
            Expanded(
              flex: 2,
              child: Container(height: 100, color: Colors.lightGreen),
            ),
            Expanded(
              flex: 4,
              child: Container(height: 100, color: Colors.indigoAccent),
            ),
          ],
        ),
      ),
    );
  }
}
