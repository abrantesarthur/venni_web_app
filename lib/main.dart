import 'package:venni/homePage.dart';
import 'package:flutter/material.dart';
import 'package:venni/configure_web.dart'
    if (dart.library.html) 'package:venni/configure_web.dart';
import 'package:venni/routes/partners.dart';

void main() {
  configureApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Venni',
      initialRoute: HomePage.routeName,
      routes: {
        Partners.routeName: (context) => Partners(),
      },
    );
  }
}
