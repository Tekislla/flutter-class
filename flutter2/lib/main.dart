import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 150,
              color: Colors.red,
            ),
            Container(
              width: 150,
              color: Colors.green,
            ),
            Container(
              width: 150,
              color: Colors.blue,
            )
          ],

        )
      )
    );
  }
}