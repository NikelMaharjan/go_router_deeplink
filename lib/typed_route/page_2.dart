



import 'package:flutter/material.dart';
import 'package:go_route_example/typed_route/typed_routes.dart';

class Page2 extends StatelessWidget {
  static const String route = "page2";

  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page2"),),
      body: Center(
        child: TextButton(
          onPressed: (){

            BlogsPageRoute().go(context);

          },
          child: const Text("go to page 1"),
        ),

      ),
    );
  }
}
