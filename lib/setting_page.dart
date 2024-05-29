

import 'package:flutter/material.dart';
import 'package:go_route_example/person.dart';
import 'package:go_router/go_router.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: TextButton(onPressed: (){
            context.goNamed(
              "profile",
              queryParameters: {
                "name": "nikel",
                "address": "okk"
              },

                extra: PersonAddress(temporaryAddress: "nepal", permanentAddress: "india")



            );


          }, child: const Text("Setting Page")),
        )
    );
  }
}
