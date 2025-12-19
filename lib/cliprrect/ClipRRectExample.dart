import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class ClipRRectExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade200,
        title: Text("CCRect", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(21)),
          child: Image.asset(
            "assets/images/wallpaper.jpg",
            width: 400,
            height: 200,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
