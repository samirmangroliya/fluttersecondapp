import 'package:flutter/material.dart';
import '../main.dart';

class CustomFont extends State<MyHomePage> {
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
             Text("New Custom Font", style: TextStyle(fontFamily: 'myFont', fontSize: 20)),
             Text("New Custom Font", style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }
}
