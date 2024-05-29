


import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  static const String route = "news";

  final String name;
  NewsPage({required this.name});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text("news page $name"),
      ),
    );
  }
}
