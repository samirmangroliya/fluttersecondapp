import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class StateFulWidget extends State<MyHomePage> {
  var counter = 0;

  @override
  void initState() {
    counter = 0;
    super.initState();
  }

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text("ListView")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: $counter", style: TextStyle(fontSize: 25)),
            ElevatedButton(
              onPressed: increment,
              child: Text("Increment count"),
            ),
          ],
        ),
      ),
    );
  }
}
