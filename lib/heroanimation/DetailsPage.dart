import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade200,
        title: Text("CCRect", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        width: double.infinity,
        child: Hero(
          tag: "background",
          child: Image.asset("assets/images/wallpaper.jpg", fit: BoxFit.fill),
        ),
      ),
    );
  }
}
