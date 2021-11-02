import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:temurambu/model/model_rambu.dart';

class RambuService {
  final _url = Uri.parse('http://192.168.2.4/temurambu/find_rambu.php');
  // final _url = Uri.parse(
  //     'https://e20fc93b-3641-4534-965b-ee8cf4eb649f.mock.pstmn.io/list');

  Future<List<RambuModel>> fetchRambu(String text) async {
    print("url " + _url.toString());
    Map<String, String> headers = {
      "Accept": "application/json",
      'Content-Type': 'application/json; charset=UTF-8',
    };

    String jsonAlamatRambu = json.encode({'alamat_rambu': text});

    final response = await http.post(
      _url,
      // headers: headers,
      body: jsonAlamatRambu,
    );
    print("http request " + response.statusCode.toString());
    // print(response.body);
    print("hasil pencarian " + jsonAlamatRambu);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResult = jsonDecode(response.body);
      List<RambuModel> listRambu = List<RambuModel>.from(
          jsonResult['response'].map((x) => RambuModel.fromJson(x))).toList();
      print('found ' + listRambu.length.toString());
      return listRambu;
    } else {
      throw Exception('Failed to load');
    }
  }
}
