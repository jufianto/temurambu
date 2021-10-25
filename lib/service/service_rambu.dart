import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:temurambu/model/model_rambu.dart';

class RambuService {
  final _url = Uri.parse(
      'https://5d5a5a2f-6e64-4da3-864f-6fc5d4bc1c0d.mock.pstmn.io/home');
  

  Future<List<RambuModel>> fetchRambu(String text) async {
    final response = await http.post(_url, body: {'nama_jalan': text});

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResult = jsonDecode(response.body);
      List<RambuModel> listRambu = List<RambuModel>.from(
          jsonResult['response'].map((x) => RambuModel.fromJson(x))).toList();
      return listRambu;
    } else {
      throw Exception('Failed to load');
    }
  }
}
