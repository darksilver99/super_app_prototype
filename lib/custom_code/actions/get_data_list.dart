// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'dart:convert';
import 'package:http/http.dart' as http;

Future getDataList() async {
  // Add your function code here!
  print("getDataList");
  await Future.delayed(const Duration(milliseconds: 1500));
  var url = "https://silver-api.com/webboard/App_api_v1/webboardList";
  Map<String, String> header = {};
  var body = {};
  var response =
      await http.post(Uri.parse(url), body: jsonEncode(body), headers: header);
  List<dynamic> jsonData = json.decode(response.body);
}
