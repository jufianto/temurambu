import 'package:flutter/material.dart';
import 'package:temurambu/pages/home_search.dart';
import 'package:temurambu/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeSearch(),
    );
  }
}
