

import 'package:flutter/cupertino.dart';
import 'package:go_route_example/home_page.dart';
import 'package:go_route_example/main.dart';
import 'package:go_route_example/person.dart';
import 'package:go_route_example/profile_page.dart';
import 'package:go_route_example/setting_page.dart';
import 'package:go_route_example/typed_route/typed_route_home_page.dart';
import 'package:go_route_example/typed_route/typed_routes.dart';
import 'package:go_router/go_router.dart';




final GoRouter typedRouter = GoRouter(
  navigatorKey: MyApp.navKey,
  initialLocation: TypedRouteHomePage.route,
  onException: (BuildContext context, state, goRouter){


  },
  routes: [

    GoRoute(
      path: TypedRouteHomePage.route,
      builder: (_, __) => const TypedRouteHomePage(),
    ),

    ...$appRoutes



  ],
);