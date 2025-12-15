import 'package:flutter/material.dart';
import '../main.dart';

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Container"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.limeAccent,
          child: Text("Hello Text"),
        ),
      ),
    );
  }
}
