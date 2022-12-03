
import 'package:flutter/material.dart';
import 'package:my_flutter_app/routes.dart';
import 'package:my_flutter_app/screens/splash/splash_screen.dart';
import 'package:my_flutter_app/theme.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
    initialRoute: SplashScreen.routeName,
    routes: routes,
    );
  }
}
