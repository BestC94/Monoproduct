import 'package:flutter/material.dart';
import 'package:projrct_application/screen/listPage.dart';
import 'package:projrct_application/screen/mainPage.dart';

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
      home: MainPage(),
      // home: FoodDetail(),
    );
  }
}

