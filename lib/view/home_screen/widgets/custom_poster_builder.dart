import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class CustomPosterBuilder extends StatelessWidget {
  const CustomPosterBuilder({
    super.key,
    this.isCircle = false,
    this.isInfoVisible = false,
    this.height = 177,
    this.width = 102,
    required this.title,
    this.imageList = const [],
  });

  final bool isCircle;
  final bool isInfoVisible;
  final double height;
  final double width;
  final String title;
  final List imageList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 23),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            title,
            style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 23),
        SizedBox(
          height: isCircle ? width : height,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 12),
            scrollDirection: Axis.horizontal,
            itemCount: imageList.length,
            separatorBuilder: (context, index) => SizedBox(width: 7),
            itemBuilder: (context, index) {
              return Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageList[index]),
                  ),
                  color: Colors.blueAccent,
                  shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                ),
                child: Visibility(
                  visible: isInfoVisible,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 3,
                        width: double.infinity,
                        color: ColorConstants.darkGrey,
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 3,
                          width: 35,
                          color: ColorConstants.mainRed,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7),
                        color: ColorConstants.mainBlack,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(
                              Icons.info_outline,
                              color: ColorConstants.mainWhite,
                              size: 24,
                            ),
                            Icon(
                              Icons.more_vert,
                              color: ColorConstants.mainWhite,
                              size: 24,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
