import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temurambu/cubit/search_rambu_cubit.dart';
import 'package:temurambu/model/model_rambu.dart';
import 'package:temurambu/pages/detail_rambu.dart';
import 'package:temurambu/service/service_rambu.dart';
import 'package:temurambu/theme/theme.dart';
import 'package:temurambu/widget/menu.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({Key? key}) : super(key: key);

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget textSearch() {
      return SafeArea(
        child: Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 32,
          ),
          child: TextFormField(
            cursorColor: darkNavy,
            onChanged: (String value) async {
              if (value == '') {
                print('kosong');
                context.read<SearchRambuCubit>().emptyRambu();
              }
              context.read<SearchRambuCubit>().fetchRambu(value);
            },
            decoration: InputDecoration(
              hintText: "cari rambu lalu lintas",
              labelText: 'Cari Rambu',
              labelStyle: TextStyle(color: darkNavy),
              hintStyle: defaultTextStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: navyColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: darkNavy,
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget cardSearch(RambuModel rambu) {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 10,
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailRambu(),
                  ),
                );
              },
              child: Container(
                height: 82,
                padding:
                    EdgeInsets.only(top: 16, bottom: 16, left: 11, right: 23),
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
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            rambu.namaRambu,
                            style:
                                defaultTextStyle.copyWith(fontWeight: regular),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            rambu.namaJalan,
                            style: defaultTextStyle.copyWith(
                                fontWeight: medium,
                                overflow: TextOverflow.ellipsis),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/icon_arrow.png"),
                            ),
                          ),
                        ),
                        Text(
                          'Lihat Detail',
                          style: TextStyle(
                            color: navyColor,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget builderRambu(BuildContext context, List<RambuModel> model) {
      return Container(
        child: Column(
          children: model.map((RambuModel rmb) {
            return cardSearch(rmb);
          }).toList(),
        ),
      );
    }

    Widget contentSearch() {
      return SingleChildScrollView(
        child: Column(
          children: [
            textSearch(),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 90,
              ),
              child: BlocBuilder<SearchRambuCubit, SearchRambuState>(
                builder: (context, state) {
                  // print(state);
                  if (state is SearchRambuSucess) {
                    return builderRambu(context, state.rambu);
                  } else {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                              "Cari Nama Rambu Berdasarkan Nama Jalan",
                              style: defaultTextStyle.copyWith(
                                fontWeight: bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          contentSearch(),
          menuNavagation(),
        ],
      ),
    );
  }
}
