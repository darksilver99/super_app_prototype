// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future getDataList(String? str) async {
  // Add your function code here!
  await Future.delayed(Duration(milliseconds: 1200));
  print("getDataList");
  var url = "https://silver-api.com/webboard/App_api_v1/testDataList";
  Map<String, String> header = {};
  var body = {"str": str};
  var response =
      await http.post(Uri.parse(url), body: jsonEncode(body), headers: header);
  if (response.statusCode != 200) {
    return;
  }
  List<dynamic> jsonData = json.decode(response.body);
  List<TestListJsonStruct> list = jsonData
      .map((jsonItem) => TestListJsonStruct(
            id: jsonItem['id'],
            subject: jsonItem['subject'],
            image: jsonItem['image'],
            createDate: jsonItem['createDate'],
          ))
      .toList();
  FFAppState().testList = list;
}
