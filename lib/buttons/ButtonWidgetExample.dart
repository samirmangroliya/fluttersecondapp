import 'package:flutter/material.dart';
import '../main.dart';

const gap16 = SizedBox(height: 16);

class ButtonWidgetExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Button Widget"),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                TextButton(
                  onPressed: () {
                    print("Button is clicked!!!");
                  },
                  child: Text("Click Me"),
                  onLongPress: () {
                    print("Button is Long Pressed!!!");
                  },
                ),

                gap16,

                ElevatedButton(
                  onPressed: () {
                    print("Elevated Button is clicked!!!");
                  },
                  child: Text("Elevated Button"),
                  onLongPress: () {
                    print("Elevated Button is Long Pressed!!!");
                  },
                ),

                gap16,

                OutlinedButton(
                  onPressed: () {
                    print("OutLined Button is clicked!!!");
                  },
                  child: Text("Outlined Button"),
                  onLongPress: () {
                    print("Outlined Button is Long Pressed!!!");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
