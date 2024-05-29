import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_route_example/typed_route/login_page.dart';
import 'package:go_route_example/typed_route/news_page.dart';
import 'package:go_route_example/typed_route/blogs_page.dart';
import 'package:go_route_example/typed_route/page_1.dart';
import 'package:go_route_example/typed_route/page_2.dart';
import 'package:go_route_example/typed_route/profile_page.dart';
import 'package:go_route_example/typed_route/refer_page.dart';
import 'package:go_route_example/typed_route/test_page.dart';
import 'package:go_router/go_router.dart';

import 'database/database_repository.dart';

part 'typed_routes.g.dart';

@TypedGoRoute<DetailPageRoute>(
    path: DetailsPage.route,
  routes: [
    TypedGoRoute<NewsPageRoute>(
      path: NewsPage.route,
    ),
    TypedGoRoute<BlogsPageRoute>(
      path: BlogsPage.route,
    ),
    TypedGoRoute<LoginPageRoute>(
      path: LoginPage.route,
    ),
    TypedGoRoute<ProfilePageRoute>(
      path: ProfilePage.route,
    ),
    TypedGoRoute<ReferCodePageRoute>(
      path: ReferPage.route,
    ),
    TypedGoRoute<BlogsPageRoute>(
      path: BlogsPage.route,
    ),
    TypedGoRoute<Page1Route>(
      path: Page1.route,
      routes: [
        TypedGoRoute<Page2Route>(
          path: Page2.route,
        ),

      ]
    ),

  ]
)
class DetailPageRoute extends GoRouteData {


  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DetailsPage();
  }
}

class LoginPageRoute extends GoRouteData {

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state)  {

    if(DatabaseRepository.haveToken) {
      return ProfilePageRoute().location;

    }
    return super.redirect(context, state);
  }

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginPage();
  }
}
class ProfilePageRoute extends GoRouteData {


  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state)  {



    if(!DatabaseRepository.haveToken) {

      return LoginPageRoute().location;

    }



    return super.redirect(context, state);
  }


  @override
  Widget build(BuildContext context, GoRouterState state) {

    return const ProfilePage();
  }
}

class ReferCodePageRoute extends GoRouteData {
  final String? referCode;
  ReferCodePageRoute({this.referCode});


  @override
  Widget build(BuildContext context, GoRouterState state) {
    return  ReferPage(referCode);
  }
}


class NewsPageRoute extends GoRouteData {

  final String name;
  NewsPageRoute({required this.name});


  @override
  Widget build(BuildContext context, GoRouterState state) {
    return  NewsPage(name: name,);
  }
}


class BlogsPageRoute extends GoRouteData {


  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BlogsPage();
  }
}

class Page1Route extends GoRouteData {


  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Page1();
  }
}

class Page2Route extends GoRouteData {


  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Page2();
  }
}


