import 'package:flutter/material.dart';
import 'package:temurambu/theme/theme.dart';
import 'package:temurambu/widget/menu.dart';

class DetailRambu extends StatelessWidget {
  const DetailRambu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 82,
                        padding: EdgeInsets.only(
                            top: 16, bottom: 16, left: 11, right: 23),
                        decoration: BoxDecoration(
                          color: yellowColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 14),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/ex1.png'),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Dilarang Berhenti",
                                  style: defaultTextStyle.copyWith(
                                      fontWeight: regular),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Jalan Tuanku Tambusai",
                                  style: defaultTextStyle.copyWith(
                                      fontWeight: medium,
                                      overflow: TextOverflow.ellipsis),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  width: double.infinity,
                  height: 262,
                  decoration: BoxDecoration(
                    color: yellowColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/maps.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          content(),
          menuNavagation(),
        ],
      ),
    );
  }
}
