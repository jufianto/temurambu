import 'dart:async';
import 'package:flutter/material.dart';
import 'package:temurambu/theme/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/home-search');
      ;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 146,
              width: 146,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo.png"),
                ),
              ),
            ),
            Text(
              "Dinas Perhubungan \n Kabupaten Kampar",
              style: defaultTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
