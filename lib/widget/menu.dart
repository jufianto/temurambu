import 'package:flutter/material.dart';
import 'package:temurambu/theme/theme.dart';

Widget menuNavagation() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width: double.infinity,
      height: 75,
      decoration: BoxDecoration(
        color: navyColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(),
              Container(
                width: 30,
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon1.png',
                    ),
                  ),
                ),
              ),
              Container(
                width: 30,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
