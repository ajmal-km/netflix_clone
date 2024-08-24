import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class SearchScreenCard extends StatelessWidget {
  const SearchScreenCard({super.key, required this.url, required this.title});

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      color: ColorConstants.darkGrey,
      child: Row(
        children: <Widget>[
          Image.network(
            fit: BoxFit.cover,
            url,
            height: 76,
            width: 146,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 14.72,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.play_circle_outline,
            size: 28,
            color: ColorConstants.mainWhite,
          ),
        ],
      ),
    );
  }
}
