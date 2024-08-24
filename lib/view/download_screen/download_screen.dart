import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 15),
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(bottom: 9, top: 15),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 21, bottom: 30),
                  child: Text(
                    "Smart Downloads",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 15.5,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.25,
                    ),
                  ),
                ),
                Text(
                  "Introducing Downloads For You",
                  style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.05,
                  ),
                ),
                SizedBox(height: 12.32),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
                  textAlign: TextAlign.justify,
                  maxLines: 3,
                  style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.18,
                    height: 1.7,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 117,
                  backgroundColor: ColorConstants.darkGrey,
                ),
                SizedBox(height: 20),
                Container(
                  height: 41,
                  decoration: BoxDecoration(
                    color: ColorConstants.blue,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "SETUP",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.71,
                    ),
                  ),
                ),
                SizedBox(height: 55),
                Container(
                  height: 33,
                  width: 239,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: ColorConstants.darkGrey,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Text(
                    "Find Something to Download",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.05,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
