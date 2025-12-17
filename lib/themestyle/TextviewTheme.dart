import 'package:flutter/material.dart';
import '../main.dart';
import '../utils/TextStyleHelper.dart';

class TextViewTheme extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("TextView Widget"),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black45,
          child: Center(
            child: Column(
              children: [
                Text(
                  "Hello Developers",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),

                Text(
                  "Hello Developers",
                  style: textStyle11().copyWith(color: Colors.red),
                ),
                Text(
                  "Hello Developers",
                  style: textStyle11(textColor: Colors.pink),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
