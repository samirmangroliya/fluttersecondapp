import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class MapFunction extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var cities = [
      {"name": "Ahmedabad", "state": "Gujarat"},
      {"name": "Mumbai", "state": "Maharashtra"},
      {"name": "Delhi", "state": "Delhi"},
      {"name": "Surat", "state": "Gujarat"},
    ];

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text("ListView")),
      body: ListView(
        children: cities.map((city) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text(city['name'].toString())),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
