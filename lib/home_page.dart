

import 'package:flutter/material.dart';
import 'package:go_route_example/person.dart';
import 'package:go_route_example/typed_route/typed_routes.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextButton(onPressed: (){
              // NewsPageRoute().go(context);

            }, child: const Text("Typed Route Page")),

            TextButton(onPressed: (){

              context.goNamed(
                "setting",
              );
              // GoRouter.of(context).push('/setting');
             }, child: const Text("Setting Page")),
            TextButton(onPressed: (){

              context.goNamed(
                "profile",
                queryParameters: {
                  "name": "nikel",
                  "address": "okk",
                  "age" : "20"
                },
                  extra: PersonAddress(temporaryAddress: "nepal", permanentAddress: "india")


              );



            }, child: const Text("Profile Page"))
          ],
        ),
      )
    );
  }
}
