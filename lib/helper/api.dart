import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          "there is a problem with status code ${response.statusCode}");
    }
  }

  Future<dynamic> post({
    required String url,
    @required dynamic body,
    @required String? token,
  }) async {
    Map<String, String> header = {};

    if (token != null) {
      header.addAll({
        "Authorization": "Basic $token",
      });
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: header);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          "there is a problem with status code ${response.statusCode}");
    }
  }

  Future<dynamic> put({
    required String url,
    @required dynamic body,
    @required String? token,
  }) async {
    Map<String, String> header = {};
    header.addAll(
      {'Content-Type': "application/x-www-form-urlencoded"},
    );

    if (token != null) {
      header.addAll({
        "Authorization": "Basic $token",
      });
    }
    print("url =$url body=$body token=$token");
    http.Response response =
        await http.put(Uri.parse(url), body: body, headers: header);
    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      return jsonDecode(response.body);
    } else {
      throw Exception(
          "there is a problem with status code ${response.statusCode}");
    }
  }
}
