
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wisdom_book/stateless/data/stateless_data.dart';
import 'package:wisdom_book/stateless/page/aboutlisttile_page.dart';

class WBStatelessPage extends StatefulWidget {
  @override
  _WBStatelessPageState createState() => _WBStatelessPageState();
}

class _WBStatelessPageState extends State<WBStatelessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('STATELESS'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: StatelessData.statelessDataList.length,
          itemBuilder: (context, index){
            // ignore: dead_code
            return GestureDetector(
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  border:Border(bottom:BorderSide(width: 1,color: Colors.black12)),
                ),
                child: Row(
                  children: [
                    Text(StatelessData.statelessDataList[index]['name'],style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutListTilePage()));
              },
            );
          },
        )
      ),
    );
  }



}
