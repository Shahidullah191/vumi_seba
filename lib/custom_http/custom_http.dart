
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
class CustomHttpRequest{

  static Future<String> getToken(String username, String password) async {
    var apiUrl = Uri.parse('https://mutation-api-stage.land.gov.bd/api/getToken');

    var response = await http.post(apiUrl, body: {
      'username': username,
      'password': password,
    });

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to get token');
    }
  }




}