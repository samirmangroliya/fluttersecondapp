import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class CardExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Card(
          elevation: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Card Widget"),
          ),
        ),
      ),
    );
  }
}
