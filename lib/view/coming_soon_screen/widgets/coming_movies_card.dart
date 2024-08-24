import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class ComingMoviesCard extends StatelessWidget {
  const ComingMoviesCard({
    super.key,
    required this.image,
    required this.date,
    required this.movieName,
    required this.description,
    required this.genre,
  });

  final String image;
  final String date;
  final String movieName;
  final String description;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.network(
          image,
          height: 195,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            right: 22.17,
            bottom: 13,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.notifications,
                    color: ColorConstants.mainWhite,
                    size: 24,
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Remind Me",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 11.13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 45),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.share,
                    color: ColorConstants.mainWhite,
                    size: 24,
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Share",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 11.13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 8.25, bottom: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Coming $date",
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 11.4,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 13.13),
              Text(
                movieName,
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 18.66,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 12.87),
              Text(
                description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: ColorConstants.mainWhite.withOpacity(0.83),
                  fontSize: 11.14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 7),
              Center(
                child: Text(
                  genre,
                  style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 11.4,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
