import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/home_screen/widgets/custom_poster_builder.dart';
import 'package:netflix_clone/view/home_screen/widgets/icon_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: ListView(
        children: <Widget>[
          _buildTopTenSection(),
          SizedBox(height: 11),
          _buildPlayButtonSection(),
          SizedBox(height: 15),
          CustomPosterBuilder(
            imageList: DummyDb.imageList1,
            title: "Previews",
            isCircle: true,
            width: 102,
          ),
          CustomPosterBuilder(
            title: "Continue Watching for Emenalo",
            isInfoVisible: true,
            imageList: DummyDb.imageList2,
          ),
          CustomPosterBuilder(
            title: "Popular on Netflix",
            height: 253,
            width: 151,
            imageList: DummyDb.imageList3,
          ),
        ],
      ),
    );
  }

  Widget _buildTopTenSection() {
    return Stack(
      children: <Widget>[
        Container(
          height: 415,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://i.pinimg.com/236x/97/be/8d/97be8d89e3c9f0f2de9ab2335c5ed89b.jpg"),
            ),
          ),
        ),
        Container(
          height: 415,
          padding: EdgeInsets.only(left: 3, right: 25, top: 45),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.transparent,
                ColorConstants.mainBlack,
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(ImageConstants.NETFLIX_N),
                  Text(
                    "TV shows",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 17.2,
                      shadows: <BoxShadow>[
                        BoxShadow(
                          offset: Offset(2, 2),
                          blurRadius: 2,
                          color: ColorConstants.mainBlack,
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Movies",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 17.2,
                      shadows: <BoxShadow>[
                        BoxShadow(
                          offset: Offset(3, 2),
                          blurRadius: 5,
                          color: ColorConstants.mainBlack,
                        )
                      ],
                    ),
                  ),
                  Text(
                    "My List",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 17.2,
                      shadows: <BoxShadow>[
                        BoxShadow(
                          offset: Offset(2, 2),
                          blurRadius: 2,
                          color: ColorConstants.mainBlack,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(ImageConstants.TOPTEN_ICON),
                  SizedBox(width: 4),
                  Text(
                    "#2 in Nigeria",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPlayButtonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconTextWidget(icon: Icons.add, title: "My List"),
        SizedBox(width: 50),
        Container(
          height: 45,
          width: 110.62,
          decoration: BoxDecoration(
            color: ColorConstants.mainWhite,
            borderRadius: BorderRadius.circular(5.63),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.play_arrow,
                color: ColorConstants.mainBlack,
                size: 21,
              ),
              Text(
                "Play",
                style: TextStyle(
                  color: ColorConstants.mainBlack,
                  fontSize: 20.46,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 41),
        IconTextWidget(icon: Icons.info_outline, title: "Info"),
      ],
    );
  }
}
