import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard({
    super.key,
    required this.image,
    required this.name,
    this.height,
    this.width,
    this.onTapped,
  });

  final String image;
  final String name;
  final double? height;
  final double? width;
  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      borderRadius: BorderRadius.circular(13),
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            height: height,
            width: width,
          ),
          Text(
            name,
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 14.6,
                fontWeight: FontWeight.w600,
                height: 2),
          ),
        ],
      ),
    );
  }
}
