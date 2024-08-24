import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: ColorConstants.mainWhite,
          size: 24,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorConstants.mainWhite,
            fontSize: 13.6,
          ),
        ),
      ],
    );
  }
}
