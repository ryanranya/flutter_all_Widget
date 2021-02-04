import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wisdom_book/api/api_error.dart';
import 'package:wisdom_book/api/api_manager.dart';
import 'package:wisdom_book/api/api_url.dart';
import 'package:wisdom_book/stateless/model/book_name_model.dart';
import 'package:wisdom_book/stateless/page/AboutDialog_page.dart';
import 'package:wisdom_book/stateless/page/aboutlisttile_page.dart';

class WBStatelessPage extends StatefulWidget {
  @override
  _WBStatelessPageState createState() => _WBStatelessPageState();
}

class _WBStatelessPageState extends State<WBStatelessPage> {
  static final List<BookNameList> _bookNameList = [];
  @override
  void initState() {
    // TODO: implement initState
    networkingBookNameList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('STATELESS'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _bookNameList.length,
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
                    Text(_bookNameList[index].book_name,style: TextStyle(fontSize: 20),),
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
//      Navigator.push(context, MaterialPageRoute(builder: (context) => PositionedDirectionalPage()));
    }
  }

  void networkingBookNameList(){
    ApiManager().post(url: ApiUrl.bookNameUrl,data: {'id':'1'},successCallback: (re){
      print('网络请求完成${re}');
//      final jsonResponse = json.decode(re);
      BookNameModel model = BookNameModel.fromJson(re);
      print(model.data[0].book_name);
      setState(() {
        _bookNameList.addAll(model.data);
      });
    },errorCallback: (HttpError error){
      print('123456789:${error.code}');
    },
        tag: 'tag');
  }

}
