import 'package:flutter/material.dart';

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

  double _dias = 0.0;
  double get dias => _dias;
  set dias(double value) {
    _dias = value;
  }

  double _watts = 0.0;
  double get watts => _watts;
  set watts(double value) {
    _watts = value;
  }

  double _horas = 0.0;
  double get horas => _horas;
  set horas(double value) {
    _horas = value;
  }
}
