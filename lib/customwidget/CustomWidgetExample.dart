import 'package:flutter/material.dart';
import 'package:fluttersecondapp/main.dart';

class CustomWidgetExample extends State<MyHomePage> {
  static const divider = Divider(thickness: 2, color: Colors.grey);
  var arrColors = [
    Colors.amber,
    Colors.grey,
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.red,
    Colors.lightGreen,
    Colors.teal,
    Colors.lightGreen,
    Colors.black,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Custom Widget Example"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.brown.shade50,
        child: Column(
          children: [
            ListViewHorizontal(),
            ListViewVertical(),
            GridViewExample(arrColors),
          ],
        ),
      ),
    );
  }
}

class ListViewHorizontal extends StatelessWidget {
  const ListViewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsetsGeometry.all(8.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(backgroundColor: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}

class ListViewVertical extends StatelessWidget {
  const ListViewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: SizedBox(
              width: 60,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('assets/images/boy.jpg'),
              ),
            ),
            title: Text("Test"),
            subtitle: Text("SubTitle"),
            trailing: Icon(Icons.add),
          );
        },
        itemCount: 8,
        separatorBuilder: (context, index) {
          return Divider(thickness: 2, color: Colors.grey);
        },
      ),
    );
  }
}

class GridViewExample extends StatelessWidget {
  var arrColors = [];

  GridViewExample(List<Color> this.arrColors, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.extent(
          maxCrossAxisExtent: 50,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,

          children: [
            Container(color: arrColors[0]),
            Container(color: arrColors[1]),
            Container(color: arrColors[2]),
            Container(color: arrColors[3]),
            Container(color: arrColors[4]),
            Container(color: arrColors[5]),
            Container(color: arrColors[6]),
            Container(color: arrColors[7]),
            Container(color: arrColors[8]),
            Container(color: arrColors[9]),
            Container(color: arrColors[10]),
          ],
        ),
      ),
    );
  }
}
