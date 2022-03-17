import 'package:flutter/material.dart';

class ExampleWidget extends StatelessWidget {
  ExampleWidget({
    required this.title,
    required this.onPress 
  });

  var title;
  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {

    if (this.title == null) {
      this.title = 'Example Title';
    }

    return Container(
      width: 200,
      color: Colors.red,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(this.title),
          TextButton(
            onPressed: this.onPress,
            child: Text('Click Here!')
          )
        ],
      ),
    );
  }
  

}