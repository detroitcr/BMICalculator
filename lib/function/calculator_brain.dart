import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height,});

  final int height;
  final int weight;
 late  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.9) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretaion() {
    if (_bmi >= 25) {
      return 'Khaana kum kar or exercise jyaada';
    } else if (_bmi > 18.9) {
      return 'Fit hein tu';
    } else {
      return 'Thoda jyaada kha';
    }
  }
}
