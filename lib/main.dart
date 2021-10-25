import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temurambu/cubit/search_rambu_cubit.dart';
import 'package:temurambu/pages/detail_rambu.dart';
import 'package:temurambu/pages/home_search.dart';
import 'package:temurambu/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchRambuCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeSearch(),
          '/home-search': (context) => HomeSearch(),
          '/detail-rambu': (context) => DetailRambu(),
        },
      ),
    );
  }
}
