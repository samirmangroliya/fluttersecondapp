import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class BMICalculatorExample extends State<MyHomePage> {
  var weightController = TextEditingController();
  var feetController = TextEditingController();
  var inController = TextEditingController();

  var result = "";
  var bgColor = Colors.yellow.shade500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade200,
        title: Text("BMI Calculator", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BMI CALCULATOR",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: weightController,
                  decoration: InputDecoration(
                    label: Text("Enter Your Weight in kgs:"),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 30),
                TextField(
                  controller: feetController,
                  decoration: InputDecoration(
                    label: Text("Enter Your Height in feet:"),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 30),
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                    label: Text("Enter Your Height in inch:"),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    var wt = weightController.text.toString().trim();
                    var feet = feetController.text.toString().trim();
                    var inch = inController.text.toString().trim();

                    if (wt.isNotEmpty && feet.isNotEmpty && inch.isNotEmpty) {
                      var iWt = int.parse(wt);
                      var iFeet = int.parse(feet);
                      var iInch = int.parse(inch);

                      var tInch = (iFeet * 12) + iInch;
                      var tCm = tInch * 2.54;
                      var tM = tCm / 100;

                      var bmi = iWt / (tM * tM);

                      var message = "";
                      if (bmi > 25) {
                        message = "You are OverWeight";
                        bgColor = Colors.orange.shade200;
                      } else if (bmi < 18) {
                        message = "You are UnderWeight";
                        bgColor = Colors.red.shade200;
                      } else {
                        message = "You are Healthy";
                        bgColor = Colors.green.shade200;
                      }

                      setState(() {
                        result =
                            "$message \n Your BMI is: ${bmi.toStringAsFixed(2)}";
                      });
                    } else {
                      setState(() {
                        result = "Please fill all the values...";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                  ),
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  result,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
