import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);

  final height;
  final weight;
  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overwieght';
    } else if (_bmi > 18.55) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have high than normal body weight. Excersise more.';
    } else if (_bmi > 18.55) {
      return 'You have a normal body weight.';
    } else {
      return 'You have lower than normal body weight.';
    }
  }
}
