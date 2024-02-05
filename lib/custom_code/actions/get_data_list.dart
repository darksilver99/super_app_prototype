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

  str = str ?? "";
  print("strstr");
  print(str);
  Map<String, String> header = {};
  var body = {"str": str};

  //widget
  var url1 = "https://silver-api.com/webboard/App_api_v1/testDataList?type=app&str=$str";
  var url1_2 = "http://43.254.133.98:3033/api/recommend/list/app?str=$str";
  //var response = await http.post(Uri.parse(url), body: jsonEncode(body), headers: header);
  var response;
  try {
    response = await http.get(Uri.parse(url1_2));
  } catch (e) {
    response = await http.get(Uri.parse(url1));
  }
  print("response");
  print(response);
  if (response.statusCode == 200) {
    List<dynamic> jsonData = json.decode(response.body);
    List<TestListJsonStruct> list = jsonData
        .map((jsonItem) =>
        TestListJsonStruct(
          id: jsonItem['id'],
          subject: jsonItem['subject'],
          image: jsonItem['image'],
          createDate: jsonItem['createDate'],
          type: jsonItem['type'],
        ))
        .toList();
    FFAppState().testList = list;
  }

  //event
  var url2 = "https://silver-api.com/webboard/App_api_v1/testDataList?type=event&str=$str";
  var url2_2 = "http://43.254.133.98:3033/api/recommend/list/event?str=$str";
  //var response2 = await http.post(Uri.parse(url2), body: jsonEncode(body), headers: header);
  var response2;
  try {
    response2 = await http.get(Uri.parse(url2_2));
  } catch (e) {
    response2 = await http.get(Uri.parse(url2));
  }
  if (response2.statusCode == 200) {
    List<dynamic> jsonData = json.decode(response2.body);
    List<TestListJsonStruct> list = jsonData
        .map((jsonItem) =>
        TestListJsonStruct(
          id: jsonItem['id'],
          subject: jsonItem['subject'],
          image: jsonItem['image'],
          createDate: jsonItem['createDate'],
          type: jsonItem['type'],
        ))
        .toList();
    FFAppState().eventList = list;
  }
}
