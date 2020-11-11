
import 'package:flutter/material.dart';

class PositionedDirectionalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PositionedDirectional'),),
      body: Center(
        child: Container(
          color: Colors.red,
          child: PositionedDirectional(
            start: 10,
            width: 200,
            height: 200,
//          top: 100,
//          end: 500,
            bottom: 550,
            child: Text('1123123'),
          ),
        ),
      ),
    );
  }
}
