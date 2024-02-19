import 'package:flutter/material.dart';
import 'contests/contests.dart';
import 'features/Presentation/Views/screens/Splach.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(scaffoldBackgroundColor: KPrimaryColor),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
