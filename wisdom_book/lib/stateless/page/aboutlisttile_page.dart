
import 'package:flutter/material.dart';

class AboutListTilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AboutListTile'),),
      body: Center(
        child: Container(
          color: Colors.black12,
          width: 200,
          height: 60,
          child: AboutListTile(
            applicationIcon: Icon(Icons.print),
            applicationName: 'AboutListTile',
            applicationVersion: 'AboutListTile 是一个弹出是试图，你点击了就展示了',
            applicationLegalese: '这里是更小的文字展示',
            aboutBoxChildren: [
              Text('这里能展示很多条，只是第一条'),
              Text('这里能展示很多条，只是第二条'),
              Text('这里能展示很多条，只是第三条'),
              Text('这里能展示很多条，只是第四条'),
              Text('这里能展示很多条，只是第五条'),
            ],
            dense: false,
            icon: Icon(Icons.add),
            child: Text('点击这里会有试图弹出'),
          ),
        ),
      )
    );
  }
}

