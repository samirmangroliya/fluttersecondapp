import 'package:flutter/material.dart';
import '../main.dart';


class ImageWidget extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Image Widget"),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Center(
            child: Image.asset('assets/images/logo.png'),
          ),
        ),
      ),
    );
  }
}
