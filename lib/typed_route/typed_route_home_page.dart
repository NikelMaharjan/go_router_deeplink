
import 'package:flutter/material.dart';
import 'package:go_route_example/typed_route/news_page.dart';
import 'package:go_route_example/typed_route/typed_routes.dart';
import 'package:go_router/go_router.dart';

class TypedRouteHomePage extends StatelessWidget {
  static const String route = "/home";

  const TypedRouteHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),
          const Text("Typed route home page"),
          TextButton(onPressed: (){
            DetailPageRoute().go(context);


          }, child: const Text("Next Page")),

          TextButton(onPressed: (){
            ReferCodePageRoute().go(context);


          }, child: const Text("ReferPage Page")),

          TextButton(onPressed: (){
            LoginPageRoute().go(context);


          }, child: const Text("Login Page")),

          TextButton(onPressed: (){
            ProfilePageRoute().go(context);


          }, child: const Text("Profile Page")),

        ],
      ),
    );
  }
}
