import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/view/coming_soon_screen/widgets/coming_movies_card.dart';
import 'package:netflix_clone/view/coming_soon_screen/widgets/new_arrival_card.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        titleSpacing: 0,
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: CircleAvatar(
            radius: 19,
            backgroundColor: ColorConstants.mainRed,
            child: Icon(
              Icons.notifications,
              color: ColorConstants.mainWhite,
              size: 18,
            ),
          ),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
            color: ColorConstants.mainWhite,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListView.builder(
            itemCount: DummyDb.newArrivalList.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => NewArrivalCard(
              image: DummyDb.newArrivalList[index]["url"],
              name: DummyDb.newArrivalList[index]["name"],
              date: DummyDb.newArrivalList[index]["date"],
            ),
          ),
          SizedBox(height: 25),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: DummyDb.comingMoviesList.length,
            itemBuilder: (context, index) => ComingMoviesCard(
              image: DummyDb.comingMoviesList[index]["url"],
              date: DummyDb.comingMoviesList[index]["date"],
              movieName: DummyDb.comingMoviesList[index]["name"],
              description: DummyDb.comingMoviesList[index]["description"],
              genre: DummyDb.comingMoviesList[index]["genre"],
            ),
          )
        ],
      ),
    );
  }
}
