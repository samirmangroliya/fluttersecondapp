import 'package:flutter/material.dart';
import 'package:fluttersecondapp/heroanimation/DetailsPage.dart';
import 'package:fluttersecondapp/main.dart';

class HeroAnimationExample extends State<MyHomePage> {
  var opacity = 1.0;
  var isFirst = true;

  void reload() {
    setState(() {
      isFirst = isFirst ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade200,
        title: Text("CCRect", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
              },
              child: Hero(
                tag: "background",
                child: Image.asset(
                  "assets/images/wallpaper.jpg",
                  width: 200,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
