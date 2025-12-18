import 'package:flutter/material.dart';
import '../main.dart';
import '../utils/TextStyleHelper.dart';

class RoundedButtonExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Image Widget"),
      ),
      body: Center(
        child: Container(
          width: 130,
          child: RoundedButton(
            text: "Play",
            icon: Icon(Icons.play_arrow, color: Colors.white,),
            callback: () {},
            textStyle: textStyle11(textColor: Colors.white),
          ),
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundedButton({
    required this.text,
    this.icon,
    this.bgColor = Colors.blue,
    this.textStyle,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback?.call();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                SizedBox(width: 10),
                Text(text, style: textStyle),
              ],
            )
          : Text(text, style: textStyle),
    );
  }
}
