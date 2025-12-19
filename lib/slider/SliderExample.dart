import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class SliderExample extends State<MyHomePage> {
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade200,
        title: Text("Slider", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RangeSlider(
                min: 0,
                max: 100,
                values: values,
                labels: labels,
                divisions: 10,
                activeColor: Colors.green.shade200,
                inactiveColor: Colors.green.shade100,
                onChanged: (newValue) {
                  setState(() {
                    values = newValue;
                  });
                },
              ),
              Text("Range Selected: ${values.start} to ${values.end}"),
            ],
          ),
        ),
      ),
    );
  }
}
