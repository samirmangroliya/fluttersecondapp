import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class ConstrainedBoxExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Constrained Box")),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300,
          minWidth: 200,
          minHeight: 100,
        ),
        child: ElevatedButton(onPressed: () {}, child: Text("Click")),
      ),
    );
  }
}
