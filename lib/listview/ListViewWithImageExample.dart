import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class ListViewWithImageExample extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var cities = ["Ahmedabad", "Gandhinagar", "Vadodara", "Surat", "Rajkot"];
    var population = ["80L", "5L", "30L", "40L", "18L"];
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text("ListView")),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 60,
              height: 60,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('assets/images/boy.jpg'),
              ),
            ),
            title: Text(cities[index]),
            subtitle: Text("Population: ${population[index]}"),
            trailing: Icon(Icons.add),
          );
        },
        itemCount: cities.length,
        separatorBuilder: (context, index) {
          return Divider(thickness: 2, color: Colors.grey);
          ;
        },
      ),
    );
  }
}
