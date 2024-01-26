import 'package:flutter/material.dart';
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

  List<String> _testList = [
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World'
  ];
  List<String> get testList => _testList;
  set testList(List<String> _value) {
    _testList = _value;
  }

  void addToTestList(String _value) {
    _testList.add(_value);
  }

  void removeFromTestList(String _value) {
    _testList.remove(_value);
  }

  void removeAtIndexFromTestList(int _index) {
    _testList.removeAt(_index);
  }

  void updateTestListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _testList[_index] = updateFn(_testList[_index]);
  }

  void insertAtIndexInTestList(int _index, String _value) {
    _testList.insert(_index, _value);
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
