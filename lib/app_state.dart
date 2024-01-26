import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<dynamic> _testList = [];
  List<dynamic> get testList => _testList;
  set testList(List<dynamic> _value) {
    _testList = _value;
  }

  void addToTestList(dynamic _value) {
    _testList.add(_value);
  }

  void removeFromTestList(dynamic _value) {
    _testList.remove(_value);
  }

  void removeAtIndexFromTestList(int _index) {
    _testList.removeAt(_index);
  }

  void updateTestListAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _testList[_index] = updateFn(_testList[_index]);
  }

  void insertAtIndexInTestList(int _index, dynamic _value) {
    _testList.insert(_index, _value);
  }

  List<dynamic> _testList2 = [];
  List<dynamic> get testList2 => _testList2;
  set testList2(List<dynamic> _value) {
    _testList2 = _value;
  }

  void addToTestList2(dynamic _value) {
    _testList2.add(_value);
  }

  void removeFromTestList2(dynamic _value) {
    _testList2.remove(_value);
  }

  void removeAtIndexFromTestList2(int _index) {
    _testList2.removeAt(_index);
  }

  void updateTestList2AtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _testList2[_index] = updateFn(_testList2[_index]);
  }

  void insertAtIndexInTestList2(int _index, dynamic _value) {
    _testList2.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
