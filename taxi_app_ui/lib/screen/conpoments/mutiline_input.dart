import 'package:flutter/material.dart';

import '../../constants.dart';

class MutilineInput extends StatelessWidget {
  const MutilineInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            offset: Offset(0, 15),
            color: kTextColor.withAlpha(20),
          ),
        ],
      ),
      child: TextField(
        textInputAction: TextInputAction.newline,
        keyboardType: TextInputType.multiline,
        maxLines: 2,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Additional comment",
          hintStyle: TextStyle(
            color: kTextLightColor,
          ),
        ),
      ),
    );
  }
}
