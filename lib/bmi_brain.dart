import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculate {
  Calculate({@required this.height, @required this.weight});

  final double height;
  final int weight;

  String getScore() {
    double bmi = weight.toDouble() / ((height / 100) * (height / 100));
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    double bmi = weight.toDouble() / ((height / 100) * (height / 100));
    if (bmi < 18.5) {
      return 'Under Weight';
    } else if (bmi >= 18.5 && bmi < 25) {
      return 'Normal';
    } else if (bmi >= 25 && bmi < 30) {
      return 'Over Weight';
    } else {
      return 'Obese';
    }
  }

  Color getcolor() {
    double bmi = weight.toDouble() / ((height / 100) * (height / 100));
    if (bmi < 18.5) {
      return Colors.yellowAccent;
    } else if (bmi >= 18.5 && bmi < 25) {
      return Colors.greenAccent;
    } else if (bmi >= 25 && bmi < 30) {
      return Colors.redAccent;
    } else {
      return Colors.redAccent;
    }
  }

  String getinference() {
    double bmi = weight.toDouble() / ((height / 100) * (height / 100));
    if (bmi < 18.5) {
      return 'You have a low body weight. Eat up dude!!';
    } else if (bmi >= 18.5 && bmi < 25) {
      return 'You have a normal body weight. Great job!!';
    } else if (bmi >= 25 && bmi < 30) {
      return 'You have a high body weight. It\'s time to cut fats!!';
    } else {
      return 'You have a very high body weight. it needs a lot of work. Start work out!!';
    }
  }
}
