import 'package:flutter/material.dart';

class PriceFilterProvider extends ChangeNotifier {
  double _currentValue = 100;
  final double _minValue = 20;
  final double _maxValue = 540;

  double get currentValue => _currentValue;
  double get minValue => _minValue;
  double get maxValue => _maxValue;

  void updateSliderValue(double value) {
    _currentValue = value;
    notifyListeners();
  }
}
