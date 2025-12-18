import 'package:flutter/material.dart';
import '../main.dart';

class RichTextViewWidget extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Rich Text Widget"),
      ),
      body: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.orange, fontSize: 23),
          children: <TextSpan>[
            TextSpan(text: "Hello"),
            TextSpan(text: " Developers", style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: " Welcome to Flutter", style: TextStyle(fontFamily: 'myFont', fontSize: 20, fontWeight: FontWeight.w900)),

          ],
        ),
      ),
    );
  }
}
