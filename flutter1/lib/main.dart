import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {

  funcAction() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Monkey donkey kongey')
        ),
        body: Column(
          children: [
            Image(image: AssetImage('assets/monkey.jpeg')),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Monkey',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Text(
                          'Monkey things',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        )
                      ]
                    )
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.blue),
                        Text('10', style: TextStyle(fontWeight: FontWeight.bold), )
                      ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  InteractionButton(
                    onPress: funcAction,
                    icon: Icons.call,
                    text: 'Call'
                  ),
                  InteractionButton(
                    onPress: funcAction,
                    icon: Icons.location_on,
                    text: 'Map'
                  ),
                  InteractionButton(
                    onPress: funcAction,
                    icon: Icons.share,
                    text: 'Share'
                  ),   
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta porta dolor eu tincidunt. Morbi sit amet iaculis turpis, sed sodales metus. Vivamus nisl magna, pellentesque sit amet urna a, tincidunt semper ipsum. In viverra enim eu venenatis eleifend. Phasellus laoreet dui et libero faucibus euismod.'),
            )
          ],          
        )
      )
    );
  }

}

// ignore: must_be_immutable
class InteractionButton extends StatelessWidget{

  InteractionButton({
    required this.onPress,
    required this.icon,
    required this.text
  });

  VoidCallback onPress;
  IconData icon;
  var text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: this.onPress,
        child: Column(
          children: [
            Icon(this.icon, color: Colors.blue),
            Text(this.text),
          ],
        ),
      ),
    );
  }

}