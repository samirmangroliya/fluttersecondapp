import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';
import 'package:intl/intl.dart';

class DateTimeExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var currentTime = DateTime.now();

    return Scaffold(
      appBar: AppBar(title: Text("Date Time Example")),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Current Date: ${currentTime.day}/${currentTime.month}/${currentTime.year}",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Current Time: ${DateFormat('Hms').format(currentTime)}",
                style: TextStyle(fontSize: 20),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("Current Time"),
              ),

              Divider(height: 50),
              Text("Select Date", style: TextStyle(fontSize: 20)),

              ElevatedButton(
                onPressed: () async {
                  DateTime? datePicker = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2021),
                    lastDate: DateTime.now(),
                  );
                  if (datePicker != null) {
                    print(
                      "Date Selected:: ${datePicker.day}/${datePicker.month}/${datePicker.year}",
                    );
                  }
                },
                child: Text("Show Date"),
              ),
              Divider(height: 50),
              Text("Select Time", style: TextStyle(fontSize: 20)),

              ElevatedButton(
                onPressed: () async {
                  TimeOfDay? timePicker = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.dial,
                  );
                  if (timePicker != null) {
                    print(
                      "Time Selected:: ${timePicker.hour}:${timePicker.minute}",
                    );
                  }
                },
                child: Text("Show Time"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
