

import 'package:flutter/material.dart';

class BlogsPage extends StatelessWidget {
  static const String route = "blogs";

  const BlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Blogs"),
      ),
    );
  }
}
