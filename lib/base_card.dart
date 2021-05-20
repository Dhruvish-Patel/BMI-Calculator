import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  BaseCard({this.child, this.colour});

  final Widget child;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: colour,
      ),
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      child: child,
    );
  }
}
