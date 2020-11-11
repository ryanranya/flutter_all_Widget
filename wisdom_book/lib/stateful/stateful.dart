
import 'package:flutter/material.dart';

class WBStatefulPage extends StatefulWidget {
  @override
  _WBStatefulPageState createState() => _WBStatefulPageState();
}

class _WBStatefulPageState extends State<WBStatefulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('STATEFUL'),
      ),
      body: Center(
        child: Text('12312312'),
      ),
    );
  }
}
