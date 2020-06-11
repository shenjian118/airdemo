import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';
import 'splash/page.dart';
import 'login/page.dart';
import 'transfer/page.dart';

Widget createApp() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'splash_page': SplashPage(),
      'login_page': LoginPage(),
      'transfer_page': TransferPage(),
    },
  );

  return MaterialApp(
    title: 'AirStarDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    color: Colors.white,
    home: routes.buildPage('splash_page', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
