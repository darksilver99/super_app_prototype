import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  List<TestListJsonStruct> _testList = [];
  List<TestListJsonStruct> get testList => _testList;
  set testList(List<TestListJsonStruct> _value) {
    _testList = _value;
  }

  void addToTestList(TestListJsonStruct _value) {
    _testList.add(_value);
  }

  void removeFromTestList(TestListJsonStruct _value) {
    _testList.remove(_value);
  }

  void removeAtIndexFromTestList(int _index) {
    _testList.removeAt(_index);
  }

  void updateTestListAtIndex(
    int _index,
    TestListJsonStruct Function(TestListJsonStruct) updateFn,
  ) {
    _testList[_index] = updateFn(_testList[_index]);
  }

  void insertAtIndexInTestList(int _index, TestListJsonStruct _value) {
    _testList.insert(_index, _value);
  }

  List<String> _testList2 = [
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World'
  ];
  List<String> get testList2 => _testList2;
  set testList2(List<String> _value) {
    _testList2 = _value;
  }

  void addToTestList2(String _value) {
    _testList2.add(_value);
  }

  void removeFromTestList2(String _value) {
    _testList2.remove(_value);
  }

  void removeAtIndexFromTestList2(int _index) {
    _testList2.removeAt(_index);
  }

  void updateTestList2AtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _testList2[_index] = updateFn(_testList2[_index]);
  }

  void insertAtIndexInTestList2(int _index, String _value) {
    _testList2.insert(_index, _value);
  }

  List<TestListJsonStruct> _eventList = [];
  List<TestListJsonStruct> get eventList => _eventList;
  set eventList(List<TestListJsonStruct> _value) {
    _eventList = _value;
  }

  void addToEventList(TestListJsonStruct _value) {
    _eventList.add(_value);
  }

  void removeFromEventList(TestListJsonStruct _value) {
    _eventList.remove(_value);
  }

  void removeAtIndexFromEventList(int _index) {
    _eventList.removeAt(_index);
  }

  void updateEventListAtIndex(
    int _index,
    TestListJsonStruct Function(TestListJsonStruct) updateFn,
  ) {
    _eventList[_index] = updateFn(_eventList[_index]);
  }

  void insertAtIndexInEventList(int _index, TestListJsonStruct _value) {
    _eventList.insert(_index, _value);
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
