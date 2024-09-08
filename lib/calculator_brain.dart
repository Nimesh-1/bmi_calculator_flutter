import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    required this.height,
    required this.weight,
  });
  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2); // Convert height to meters
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpolation() {
    if (_bmi >= 25) {
      return 'You have more weight. Try exercising.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal weight. Good job!';
    } else {
      return 'You have lower than normal body weight. You can eat a bit more.';
    }
  }
}
