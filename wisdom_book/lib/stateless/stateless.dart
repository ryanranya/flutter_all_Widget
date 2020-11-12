
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wisdom_book/api/api_config.dart';
import 'package:wisdom_book/api/api_error.dart';
import 'package:wisdom_book/api/api_manager.dart';
import 'package:wisdom_book/api/api_url.dart';
import 'package:wisdom_book/stateless/data/stateless_data.dart';
import 'package:wisdom_book/stateless/page/AboutDialog_page.dart';
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
                pushNextPage(index, context);
              },
            );
          },
        )
      ),
    );
  }

  void pushNextPage(int index, BuildContext context){
    if (index == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => AboutListTilePage()));
    }else if(index == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => AboutDialogPage()));
    }else if(index == 2) {
      networkingBookNameList();
//      Navigator.push(context, MaterialPageRoute(builder: (context) => PositionedDirectionalPage()));
    }
  }

  void networking() async{
    var dio = Dio();
    Response response = await dio.get('https://google.com');
    print(response);
  }

  void networkingBookNameList(){
    ApiManager().post(url: ApiUrl.bookNameUrl,data: {'id':'1'},successCallback: (re){
      print('网络请求完成${re}');
    },errorCallback: (HttpError error){
      print('123456789:${error.code}');
    },
        tag: 'tag');
  }


}
