import 'package:bookstore/features/Data/cubits/featured_books_cubit/featured_books_states_cubit.dart';
import 'package:bookstore/features/Data/repos/home_repo_implementation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'contests/contests.dart';
import 'core/utils/service_locatoer.dart';
import 'features/Data/cubits/BestSeller_Books_Cubit/best_seller_books_cubit.dart';
import 'features/Presentation/Views/screens/Splach.dart';

void main() {
  SetUp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => FeaturedBooksStatesCubit(
            getit.get<home_repo_imp>(),
          )..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (BuildContext context) => BestSellerBooksCubit(
            getit.get<home_repo_imp>(),
          )..fetchBestSellerBooks(),
        ),
      ],
      child: MaterialApp(
       // themeMode: ThemeMode.dark,
          theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: KPrimaryColor,
            textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
          debugShowCheckedModeBanner: false,
          home: SplashPage(),
      ),
    );
  }
}
