

import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  static const String route = "page1";

  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page1"),),
      body: Center(
        child: TextButton(
          onPressed: (){

          },
          child: Text("next"),
        ),

      ),
    );
  }
}
