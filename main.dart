import 'package:flutter/material.dart';
import 'models/item.dart';
import 'pages/item_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Item Viewer',
      home: ItemPageView(),
    );
  }
}
