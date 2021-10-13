import 'package:flutter/material.dart';
import 'package:temurambu/theme/theme.dart';
import 'package:temurambu/widget/menu.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          menuNavagation(),
        ],
      ),
    );
  }
}
