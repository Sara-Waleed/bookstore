import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
     // themeMode: ThemeMode.dark,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: KPrimaryColor,
          textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
    );
  }
}
