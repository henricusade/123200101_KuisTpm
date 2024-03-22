import 'package:flutter/material.dart';
import 'package:123200101_kuis/top_albums_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Top Albums',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TopAlbumsPage(),
    );
  }
}
