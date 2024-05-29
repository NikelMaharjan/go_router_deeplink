

import 'package:flutter/material.dart';

class ReferPage extends StatelessWidget {
  static const String route = "refer";

  final String? referCode;
  const ReferPage(this.referCode, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text("Refer Code is  ${referCode ?? "empty"}"),
      ),
    );
  }
}
