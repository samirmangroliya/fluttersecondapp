import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class ContainerDecorationsExample extends State<MyHomePage> {
  static const divider = Divider(thickness: 2, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text("Container")),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.brown.shade50,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.grey,
                  spreadRadius: 6
                )
              ],
             // shape: BoxShape.circle if you want shape circle here remove this line borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
