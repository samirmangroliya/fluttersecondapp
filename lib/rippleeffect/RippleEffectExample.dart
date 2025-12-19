import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class RippleEffectExample extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  var radiusList = [100.0, 150.0, 200.0, 250.0, 300.0];

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4), lowerBound: 0.5
    );

    animation = Tween(begin: 0.0, end: 1.0).animate(animationController);

    animationController.addListener(() {
      print(animation.value);
      setState(() {});
    });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade200,
        title: Text("Ripple Animation", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: radiusList
              .map(
                (radius) => Container(
                  width: radius * animationController.value,
                  height: radius * animationController.value,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.withOpacity(1.0-animationController.value),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
