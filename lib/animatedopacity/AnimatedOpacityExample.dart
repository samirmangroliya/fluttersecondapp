import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class AnimatedOpacityExample extends State<MyHomePage> {
  var opacity = 1.0;
  var visible = true;

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
            AnimatedOpacity(opacity: opacity, duration: Duration(seconds: 1),
            curve: Curves.slowMiddle,
            child: Container(
              width: 200,
              height: 100,
              color: Colors.blue              
            )),
            ElevatedButton(onPressed: (){
              setState(() {
                if(visible) {
                  visible = false;
                  opacity = 0.0;
                } else {
                  opacity = 1.0;
                  visible = true;
                }
              });
            }, child: Text("Hide / Show"))
          ],
        ),
      ),
    );
  }
}
