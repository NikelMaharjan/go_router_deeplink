

import 'package:flutter/material.dart';
import 'package:go_route_example/typed_route/news_page.dart';
import 'package:go_route_example/typed_route/page_2.dart';
import 'package:go_route_example/typed_route/typed_routes.dart';

class DetailsPage extends StatelessWidget {
  static const String route = "/";

  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              NewsPageRoute(name: "nikel").go(context);



            }, child: const Text("news page")),

            TextButton(onPressed: (){

              BlogsPageRoute().go(context);


            }, child: const Text("blogs page")),

            TextButton(onPressed: (){

              Page2Route().go(context);




            }, child: const Text("form page")),
          ],
        ),
      ),
    );
  }
}
