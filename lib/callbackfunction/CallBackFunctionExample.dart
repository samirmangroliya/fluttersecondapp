import 'package:flutter/material.dart';
import '../main.dart';

class CallbackFunctionExample extends State<MyHomePage> {

  void callbackFunction() {
    print("ElevatedButton Clicked...");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Callback Function"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: callbackFunction, child: Text("Click me")),
      ),
    );
  }
}
