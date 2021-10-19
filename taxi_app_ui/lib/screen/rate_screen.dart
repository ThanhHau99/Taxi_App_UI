import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taxi_app_ui/constants.dart';
import 'package:taxi_app_ui/screen/conpoments/rounded_button.dart';

import 'conpoments/app_header.dart';
import 'conpoments/custom_app_bar.dart';
import 'conpoments/main_button.dart';
import 'conpoments/mutiline_input.dart';
import 'conpoments/ride_info.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RateScreen extends StatelessWidget {
  const RateScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppHeader(),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(kDefaultPadding * 2),
                child: Column(
                  children: [
                    CustomAppBar(),
                    SizedBox(
                      height: kDefaultPadding * 3,
                    ),
                    Container(
                      height: size.width * 0.4,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular((size.width * 0.4) / 2),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/driver.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Text(
                      "Your Driver: ",
                      style: TextStyle(
                        fontSize: 16,
                        color: kTextLightColor,
                      ),
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Text(
                      "Wasilij Smith",
                      style: TextStyle(
                        fontSize: 24,
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Divider(
                      color: kTextLightColor,
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    RideStats(),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Divider(
                      color: kTextLightColor,
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Text(
                      "Mark,",
                      style: TextStyle(
                        color: kTextLightColor,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "How is your trip?",
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    SmoothStarRating(
                      allowHalfRating: false,
                      onRated: (v) {},
                      starCount: 5,
                      size: 45,
                      isReadOnly: false,
                      spacing: kDefaultPadding,
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    MutilineInput(),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    MainButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
