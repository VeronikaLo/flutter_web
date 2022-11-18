import 'package:flutter/material.dart';
import 'package:flutter_web/presentation/home_page/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:routemaster/routemaster.dart';
import 'package:url_strategy/url_strategy.dart';

import 'presentation/dev_page/dev_page.dart';
import 'presentation/eco_page/eco_page.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

final routes = RouteMap(
  onUnknownRoute: (route) => const MaterialPage(child: HomePage()), //TODO: 
  routes: {
  '/' : (_) => const Redirect('/home'),
  '/home' : (_) => const MaterialPage(child: HomePage()),
  '/development' : (_) => const MaterialPage(child: DevPage()),
  '/ecosystem' : (_) => const MaterialPage(child: EcoPage()),
} );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routeInformationParser: const RoutemasterParser() ,
      routerDelegate: RoutemasterDelegate(routesBuilder: (context) => routes,) ,
      debugShowCheckedModeBanner: false,
      title: 'Flutter web',
      //home:  const HomePage(),
      builder: (context, widget) => ResponsiveWrapper.builder(
        widget,
        defaultScale: true,
        minWidth: 400,
        defaultName: MOBILE,
        breakpoints: const[
          ResponsiveBreakpoint.autoScale(450, name: MOBILE),
          ResponsiveBreakpoint.resize(600, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        backgroundColor: Colors.white,
      ) ,
    );
  }
}

