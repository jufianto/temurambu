import 'package:flutter/material.dart';
import 'package:temurambu/theme/theme.dart';

Widget menuNavagation() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width: double.infinity,
      height: 75,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: navyColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Text(
                "Cari Rambu",
                style: TextStyle(
                  fontSize: 12,
                  color: whiteColor,
                  fontWeight: medium,
                ),
              ),
              Container(
                width: 56,
                height: 5,
                margin: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                  color: yellowColor,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Container(
                width: 30,
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon2.png',
                    ),
                  ),
                ),
              ),
              Text(
                "List Rambu",
                style: TextStyle(
                  fontSize: 12,
                  color: whiteColor,
                  fontWeight: medium,
                ),
              ),
              Container(
                width: 56,
                height: 2,
                decoration: BoxDecoration(
                  color: transparent,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
