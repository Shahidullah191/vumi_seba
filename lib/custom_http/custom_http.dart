import 'dart:convert';

import 'package:http/http.dart' as http;

class CustomHttpRequest {
  static Future<String> getToken(String username, String password) async {
    var apiUrl = Uri.parse('https://api.land.gov.bd/api/getToken');
    final data = <String, String>{
      'username': username,
      'password': password,
      'clientid': "ldtax",
    };

    var response = await http.post(
      apiUrl,
      body: data,
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      return jsonDecode(response.body)['token'];
    } else {
      throw Exception('Failed to get token');
    }
  }
}
