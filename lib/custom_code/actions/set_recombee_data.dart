// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future setRecombeeData(String? id) async {
  // Add your function code here!
  try {
    print("setRecombeeData $id");
    await http
        .get(Uri.parse("http://43.254.133.98:3033/api/recommend/buy/$id"));
  } catch (e) {
    print(e);
  }
}
