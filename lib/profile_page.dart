


import 'package:flutter/material.dart';
import 'package:go_route_example/person.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {


  final String name;
  final String address;
  final String? age;

  final PersonAddress personAddress;


   const ProfilePage({super.key, required this.name, required this.address, this.age, required this.personAddress});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Profile page of $name $address ${personAddress.permanentAddress} ${personAddress.temporaryAddress}"),
              Text(age ?? "not provided"),
              TextButton(onPressed: (){
                context.goNamed("setting2");
              }, child: Text("Go",),),
            ],
          )
        )
    );
  }
}
