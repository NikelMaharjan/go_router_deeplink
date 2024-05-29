


import 'package:flutter/material.dart';

import 'database/database_repository.dart';

class ProfilePage extends StatelessWidget {

  static const String route = "profile";

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),
          const Text("profile page"),
          TextButton(
              onPressed: () {
                DatabaseRepository().saveToken("1234");
                final token =   DatabaseRepository.authToken;
                print("token is $token");


              }, child: const Text("save token")
          ),
          TextButton(
              onPressed: () {
                DatabaseRepository().deleteToken();
                final token =   DatabaseRepository.authToken;
                print("token is $token");





              }, child: const Text("delete token")
          )

        ],
      ),
    );
  }
}
