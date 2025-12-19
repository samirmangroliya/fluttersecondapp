import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class AnimatedContainerExample extends State<MyHomePage> {
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;

  Decoration decoration = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.green,
  );

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
            AnimatedContainer(
              width: _width,
              height: _height,
              curve: Curves.bounceOut,
              duration: Duration(seconds: 1),
              decoration: decoration,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    _width = 100;
                    _height = 200;
                    flag = false;

                    decoration = BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                    );
                  } else {
                    _width = 200;
                    _height = 100;
                    flag = true;

                    decoration = BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.green,
                    );
                  }
                });
              },
              child: Text("Animate"),
            ),
          ],
        ),
      ),
    );
  }
}
