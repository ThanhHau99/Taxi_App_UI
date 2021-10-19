import 'package:flutter/material.dart';

class RounderButton extends StatelessWidget {
  const RounderButton({
    Key key,
    @required this.icon,
    @required this.iconColor,
    @required this.bgColor,
    @required this.tap,
  }) : super(key: key);
  final Icon icon;
  final Color iconColor, bgColor;
  final GestureTapCallback tap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: bgColor,
      ),
      child: IconButton(
        icon: icon,
        color: iconColor,
        onPressed: tap,
      ),
    );
  }
}
