import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({
    super.key,
    required this.image,
    required this.name,
    required this.date,
  });

  final String image;
  final String name;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.darkGrey,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        children: <Widget>[
          Image.network(
            image,
            fit: BoxFit.fitWidth,
            height: 55,
            width: 113,
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "New Arrival",
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  color: ColorConstants.mainWhite.withOpacity(0.83),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  color: ColorConstants.mainWhite.withOpacity(0.43),
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
