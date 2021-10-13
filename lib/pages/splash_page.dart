import 'package:flutter/material.dart';
import 'package:temurambu/theme/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

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
