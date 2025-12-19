import 'package:flutter/material.dart';
import '../main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWidget extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Icons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.play_circle_rounded, size: 50, color: Colors.deepOrange),
            SizedBox(height: 20),
            FaIcon(FontAwesomeIcons.google, color: Colors.deepOrange),
            SizedBox(height: 20),
            FaIcon(FontAwesomeIcons.youtube, color: Colors.deepOrange),
            SizedBox(height: 20),
            FaIcon(FontAwesomeIcons.googleDrive, color: Colors.deepOrange),
          ],
        ),
      ),
    );
  }
}
