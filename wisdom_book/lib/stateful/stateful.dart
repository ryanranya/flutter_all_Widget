import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';

List<String> images = [
  '有朋至远方来,不亦说乎',
  '人不知而不韫,不亦君子乎',
  '少小离家老大回,乡音无改鬓毛衰',
  '日照香炉生紫烟,遥看瀑布挂前川',
  '有朋至远方来,不亦说乎',
  '人不知而不韫,不亦君子乎',
  '少小离家老大回,乡音无改鬓毛衰',
  '日照香炉生紫烟,遥看瀑布挂前川',
  '有朋至远方来,不亦说乎',
  '人不知而不韫,不亦君子乎',
  '少小离家老大回,乡音无改鬓毛衰',
  '日照香炉生紫烟,遥看瀑布挂前川',
  '有朋至远方来,不亦说乎',
  '人不知而不韫,不亦君子乎',
  '少小离家老大回,乡音无改鬓毛衰',
  '日照香炉生紫烟,遥看瀑布挂前川',
  '有朋至远方来,不亦说乎',
  '人不知而不韫,不亦君子乎',
  '少小离家老大回,乡音无改鬓毛衰',
  '日照香炉生紫烟,遥看瀑布挂前川',
  '有朋至远方来,不亦说乎',
  '人不知而不韫,不亦君子乎',
  '少小离家老大回,乡音无改鬓毛衰',
  '日照香炉生紫烟,遥看瀑布挂前川',
  '有朋至远方来,不亦说乎',
  '人不知而不韫,不亦君子乎',
  '少小离家老大回,乡音无改鬓毛衰',
  '日照香炉生紫烟,遥看瀑布挂前川',
];

List<Widget> cards = List.generate(
  images.length,
  (int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 23.0,
            spreadRadius: -13.0,
            color: Colors.black54,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Text(
          images[index],
//          style: TextStyle(
//              fontSize: 30, fontFamily: 'FZFSJT', color: Colors.black),
        ),
      ),
    );
  },
);

class WBStatefulPage extends StatefulWidget {
  @override
  _WBStatefulPageState createState() => _WBStatefulPageState();
}

class _WBStatefulPageState extends State<WBStatefulPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('经典名句'),
      ),
      body: Center(
        child: Text('data'),
//        TCard(
//          size: Size(double.infinity - 100, double.infinity - 300),
//          cards: cards,
////              controller: _controller,
//          onForward: (index, info) {
//            _index = index;
//            setState(() {});
//          },
//          onBack: (index) {
//            _index = index;
//            setState(() {});
//          },
//          onEnd: () {
//            print('end');
//          },
//        ),
      ),
    );
  }
}
