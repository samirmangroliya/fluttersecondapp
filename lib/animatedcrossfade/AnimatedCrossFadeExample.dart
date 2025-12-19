import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class AnimatedCrossFadeExample extends State<MyHomePage> {
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
            AnimatedCrossFade(
              duration: Duration(seconds: 2),
              firstChild: Container(
                width: 200,
                height: 100,
                color: Colors.blue,
              ),
              secondChild: Image.asset(
                "assets/images/wallpaper.jpg",
                width: 200,
                height: 100,
                fit: BoxFit.fill,
              ),
              crossFadeState: isFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              /* firstCurve: Curves.easeInOut,
              secondCurve: Curves.bounceInOut,*/
            ),
            ElevatedButton(
              onPressed: () {
                reload();
              },
              child: Text("Show"),
            ),
          ],
        ),
      ),
    );
  }
}
