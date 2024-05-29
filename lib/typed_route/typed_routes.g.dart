// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typed_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $detailPageRoute,
    ];

RouteBase get $detailPageRoute => GoRouteData.$route(
      path: '/',
      factory: $DetailPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'news',
          factory: $NewsPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'blogs',
          factory: $BlogsPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'login',
          factory: $LoginPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'profile',
          factory: $ProfilePageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'refer',
          factory: $ReferCodePageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'blogs',
          factory: $BlogsPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'page1',
          factory: $Page1RouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'page2',
              factory: $Page2RouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $DetailPageRouteExtension on DetailPageRoute {
  static DetailPageRoute _fromState(GoRouterState state) => DetailPageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NewsPageRouteExtension on NewsPageRoute {
  static NewsPageRoute _fromState(GoRouterState state) => NewsPageRoute(
        name: state.uri.queryParameters['name']!,
      );

  String get location => GoRouteData.$location(
        '/news',
        queryParams: {
          'name': name,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BlogsPageRouteExtension on BlogsPageRoute {
  static BlogsPageRoute _fromState(GoRouterState state) => BlogsPageRoute();

  String get location => GoRouteData.$location(
        '/blogs',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LoginPageRouteExtension on LoginPageRoute {
  static LoginPageRoute _fromState(GoRouterState state) => LoginPageRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfilePageRouteExtension on ProfilePageRoute {
  static ProfilePageRoute _fromState(GoRouterState state) => ProfilePageRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ReferCodePageRouteExtension on ReferCodePageRoute {
  static ReferCodePageRoute _fromState(GoRouterState state) =>
      ReferCodePageRoute(
        referCode: state.uri.queryParameters['refer-code'],
      );

  String get location => GoRouteData.$location(
        '/refer',
        queryParams: {
          if (referCode != null) 'refer-code': referCode,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Page1RouteExtension on Page1Route {
  static Page1Route _fromState(GoRouterState state) => Page1Route();

  String get location => GoRouteData.$location(
        '/page1',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Page2RouteExtension on Page2Route {
  static Page2Route _fromState(GoRouterState state) => Page2Route();

  String get location => GoRouteData.$location(
        '/page1/page2',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
