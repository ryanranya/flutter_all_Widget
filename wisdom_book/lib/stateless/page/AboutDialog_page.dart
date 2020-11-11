

import 'package:flutter/material.dart';

class AboutDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AboutDialog'),),
      body: Center(
        child: AboutDialog(
          applicationIcon: Icon(Icons.print),
          applicationName: 'AboutListTile',
          applicationVersion: 'AboutListTile 是一个弹出是试图，你点击了就展示了',
          applicationLegalese: '这里是更小的文字展示',
          children: [
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
          ],
        ),
      ),
    );
  }
}
