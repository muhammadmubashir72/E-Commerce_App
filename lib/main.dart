import 'package:e_commerce_app/NavScreen/NavBarScreen.dart';
import 'package:flutter/material.dart';
import 'models/productClass.dart';

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
      title: 'E-Commerce App',
      theme: ThemeData(
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
              fontSize: 34,
              fontFamily: 'Metropolis',
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            bodyMedium: TextStyle(
              fontSize: 14,
              fontFamily: 'Metropolis',
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            bodySmall: TextStyle(
              fontSize: 11,
              fontFamily: 'Metropolis',
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            titleLarge: TextStyle(
              fontSize: 48,
              fontFamily: 'Metropolis',
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
            titleMedium: TextStyle(
              fontSize: 24,
              fontFamily: 'Metropolis',
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            titleSmall: TextStyle(
              fontSize: 18,
              fontFamily: 'Metropolis',
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            labelSmall: TextStyle(
              fontSize: 10,
              fontFamily: 'Metropolis',
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
            labelMedium: TextStyle(
              fontSize: 16,
              fontFamily: 'Metropolis',
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            headlineSmall: TextStyle(
              fontSize: 14,
              fontFamily: 'Metropolis',
              color: Color(0xffABB4BD),
              fontWeight: FontWeight.w500,
            ),
            headlineMedium: TextStyle(
              fontSize: 14,
              fontFamily: 'Metropolis',
              color: Color(0xff2A2C36),
              fontWeight: FontWeight.w500,
            ),
            displaySmall: TextStyle(
              fontSize: 11,
              fontFamily: 'Metropolis',
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
            displayMedium: TextStyle(
              fontSize: 11,
              fontFamily: 'Metropolis',
              color: Color(0xffABB4BD),
              fontWeight: FontWeight.w500,
            ),
            displayLarge: TextStyle(
              fontSize: 44,
              fontFamily: 'Metropolis',
              color: Colors.white,
              fontWeight: FontWeight.w800,
            )),
        primarySwatch: Colors.blue,
      ),
      home: const navigationScreen(),
    );
  }
}

List<Product> favoritelist = [];
