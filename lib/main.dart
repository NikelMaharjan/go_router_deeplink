


import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:go_route_example/typed_route/database/database_repository.dart';
import 'package:go_route_example/typed_route/typed_route_config.dart';
import 'package:go_route_example/typed_route/typed_routes.dart';
import 'package:go_router/go_router.dart';

void main () async{
  await DatabaseRepository().init();
  runApp(const MyApp());

}



class MyApp extends StatefulWidget {
  
  static final navKey = GlobalKey<NavigatorState>();

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final StreamSubscription deepLinkSubscription;


  @override
  void initState() {
    handleDeepLink();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp.router(
      routerConfig: typedRouter,

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),

    );
  }

  void handleDeepLink() async {
    final appLinks = AppLinks();
    deepLinkSubscription = appLinks.allUriLinkStream.listen((event) {
      _navigateDeepLink(event);
    });
    final initialUrl = await appLinks.getInitialAppLink();
    _navigateDeepLink(initialUrl);
  }


  void _navigateDeepLink(Uri? initialUrl) async {
    if (initialUrl == null) return;
    final context = MyApp.navKey.currentContext!;

    await Future.delayed(Duration.zero);
    if (!context.mounted) return;



    final token = initialUrl.queryParameters["token"];
     print("url is $initialUrl");
     print("token is $token");
    // if (referCode != null) {
    //    ReferCodePageRoute(referCode: referCode).go(context);
    //
    //   ProfilePageRoute().go(context);
    //
    // }
    if(token !=null ) {
      DatabaseRepository().saveToken(token);
    }

    context.go(initialUrl.path);

  }


}
