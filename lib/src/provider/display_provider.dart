import 'package:expressions/expressions.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DisplayProvider extends ChangeNotifier {
  String _displayText = '';

  String get displayText => _displayText;

  void addText(String value) {
    _displayText += value;
    notifyListeners();
  }

  void clearDisplay() {
    _displayText = '';
    notifyListeners();
  }

  void calculteResult() {
    try {
      String formattedExpression = _displayText
          .replaceAll('÷', '/')
          .replaceAll(',', '.')
          .replaceAll('x', '*');

      final expresssion = Expression.parse(formattedExpression);
      const evaluator = ExpressionEvaluator();
      var result = evaluator.eval(expresssion, {});

      _displayText = result.toString();
    } catch (e) {
      _displayText = 'Error';
    }
    notifyListeners();
  }

  void toggleSign() {
    try {
      if (_displayText.isEmpty) {
        return;
      }
      String displayValue = _displayText.replaceAll(',', '.');
      double curretValue = double.parse(displayValue);
      curretValue = -curretValue;
      _displayText = curretValue.toString();
    } catch (e) {
      _displayText = 'Error';
    }
    notifyListeners();
  }

  void calculateSquareRoot() {
    try {
      if (_displayText.isEmpty) {
        return;
      }
      String displayValue = _displayText.replaceAll(',', '.');
      double curretValue = double.parse(displayValue);
      if (curretValue < 0) {
        _displayText = 'Error';
        return;
      }
      curretValue = sqrt(curretValue);
      _displayText = curretValue.toString();
    } catch (e) {
      _displayText = 'Error';
    }
    notifyListeners();
  }
}
