import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class ScrollviewExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text("Scrollview")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                primary: false,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 12, right: 12),
                      width: 200,
                      height: 200,
                      color: Colors.orange,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 12, right: 12),
                      width: 200,
                      height: 200,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 12, right: 12),
                      width: 200,
                      height: 200,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 12, right: 12),
                      width: 200,
                      height: 200,
                      color: Colors.redAccent,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 12, right: 12),
                      width: 200,
                      height: 200,
                      color: Colors.blueGrey,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 12, right: 12),
                      width: 200,
                      height: 200,
                      color: Colors.brown,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),

                height: 200,
                color: Colors.greenAccent,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                height: 200,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                height: 200,
                color: Colors.lightGreen,
              ),
              Container(
                margin: EdgeInsets.only(top: 12, bottom: 12),
                height: 200,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                height: 200,
                color: Colors.greenAccent,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                height: 200,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                height: 200,
                color: Colors.lightGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
