import 'package:flutter/material.dart';
import 'constants.dart';

class GenderCard extends StatelessWidget {
  GenderCard({@required this.icon, @required this.gender});

  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 90.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
