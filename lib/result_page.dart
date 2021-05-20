import 'package:flutter/material.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.score,
      @required this.result,
      @required this.inference,
      @required this.colour});

  final String score, result, inference;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 25.0,
          ),
        ),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Text(
              'Your Result',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              margin: EdgeInsets.all(35.0),
              color: Color(0xFF1D1F33),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    result.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25.0, color: colour),
                  ),
                  Text(
                    score,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 90.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    inference,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25.0, color: Color(0xFFFFFFFF)),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: Color(kpinkColor),
              height: 80.0,
              padding: EdgeInsets.only(bottom: 15.0),
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
