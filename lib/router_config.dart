

import 'package:go_route_example/home_page.dart';
import 'package:go_route_example/person.dart';
import 'package:go_route_example/profile_page.dart';
import 'package:go_route_example/setting_page.dart';
import 'package:go_router/go_router.dart';




final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      name: "home",
      routes: [
        GoRoute(
          path: "setting",
          name: "setting",
          builder: (context, state) => const SettingPage(),
          routes: [
            GoRoute(
              name: "profile",
              path: "profile",
              builder: (context, state) {
                final personAddress = state.extra as PersonAddress?;

                //to solve back pressed in webpage.. dont use state.extra!. pass data through riverpod
                if(personAddress==null){
                  return const SettingPage();
                }
                return ProfilePage(
                  name: state.uri.queryParameters["name"]!,
                  address: state.uri.queryParameters["address"]!,
                  age: state.uri.queryParameters["age"],
                  personAddress: personAddress,

                );
              },
              routes: [
                GoRoute(
                  path: "setting",
                  name: "setting2",
                  builder: (context, state) => const SettingPage(),
                )
              ]
            )
          ]
        ),


      ],

      builder: (context, state) => const HomePage(),
    ),



  ],
);