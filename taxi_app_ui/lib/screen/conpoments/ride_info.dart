import 'package:flutter/material.dart';

import '../../constants.dart';

class RideStats extends StatelessWidget {
  const RideStats({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RideInFo(
          title: "Time",
          value: "15 min",
        ),
        RideInFo(
          title: "Price:",
          value: "\$9.99",
        ),
        RideInFo(
          title: "Distance",
          value: "15 km",
        ),
      ],
    );
  }
}

class RideInFo extends StatelessWidget {
  const RideInFo({
    Key key,
    @required this.title,
    @required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "$title\n",
            style: TextStyle(
              color: kTextLightColor,
              fontSize: 16,
            ),
          ),
          TextSpan(
            text: value,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: kTextColor),
          ),
        ],
      ),
    );
  }
}
