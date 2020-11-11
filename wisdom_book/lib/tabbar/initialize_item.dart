

import 'package:flutter/material.dart';
import 'package:wisdom_book/proxy/proxy.dart';
import 'package:wisdom_book/render/render.dart';
import 'package:wisdom_book/stateful/stateful.dart';
import 'package:wisdom_book/stateless/stateless.dart';
import 'package:wisdom_book/tabbar/item.dart';

List<WBBottomBarItem> items = [
  WBBottomBarItem('stateful_n','stateful_s','stateful'),
  WBBottomBarItem('stateless_n','stateless_s','stateless'),
  WBBottomBarItem('proxy_n','proxy_s','proxy'),
  WBBottomBarItem('render_n','render_s','render'),
];

List<Widget> pages = [
  WBStatefulPage(),
  WBStatelessPage(),
  WBProxyPage(),
  WBRenderPage(),
];