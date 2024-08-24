import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/global_widgets/user_name_card.dart';
import 'package:netflix_clone/view/my_list_screen/my_list_screen.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(top: 55),
          children: <Widget>[
            _buildUserSelectionSection(),
            SizedBox(height: 9),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.edit,
                  color: ColorConstants.mainWhite,
                  size: 20,
                ),
                SizedBox(width: 9),
                Text(
                  "Manage Profiles",
                  style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 11),
            _buildRecommendSection(),
            Padding(
              padding:
                  const EdgeInsets.only(top: 3, right: 27, bottom: 5, left: 27),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyListScreen(),
                    ),
                  );
                },
                child: Row(
                  children: <Widget>[
                    Image.asset(ImageConstants.CHECK_ICON),
                    SizedBox(width: 6),
                    Text(
                      "My List",
                      style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _buildOptionsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionsSection() {
    return Column(
      children: <Widget>[
        Divider(
          height: 1,
          thickness: 1,
          color: ColorConstants.darkGrey,
        ),
        ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(
            top: 15,
            left: 26,
          ),
          children: <Widget>[
            Text(
              "App Settings",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 17,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.25,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Account",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 17,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.25,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Help",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 17,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.25,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Sign Out",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 17,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.25,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRecommendSection() {
    return Container(
      height: 247,
      color: ColorConstants.darkGrey,
      padding: EdgeInsets.only(top: 19, left: 16, right: 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.message_outlined,
                color: ColorConstants.mainWhite,
                size: 24,
              ),
              SizedBox(width: 9),
              Text(
                "Tell friends about Netflix.",
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
            maxLines: 2,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 11),
          Text(
            "Terms & Conditions",
            style: TextStyle(
              color: Colors.transparent,
              fontSize: 11,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
              decorationColor: ColorConstants.grey,
              decorationThickness: 1.7,
              letterSpacing: -0.18,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0, -3),
                  color: ColorConstants.grey,
                ),
              ],
            ),
          ),
          SizedBox(height: 11),
          Row(
            children: <Widget>[
              SizedBox(
                height: 37,
                width: 279,
                child: TextField(
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus!.unfocus(),
                  decoration: InputDecoration(
                    hintText: "",
                    hintStyle: TextStyle(height: 1),
                    fillColor: ColorConstants.mainBlack,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 7),
              Container(
                height: 36.7,
                width: 96,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: ColorConstants.mainWhite,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "Copy Link",
                  style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.29,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 21),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Brand(Brands.whatsapp, size: 45),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.dividerGrey,
                  thickness: 2,
                ),
              ),
              Brand(Brands.facebook, size: 45),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.dividerGrey,
                  thickness: 2,
                ),
              ),
              Brand(Brands.gmail, size: 45),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.dividerGrey,
                  thickness: 2,
                ),
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.more_horiz,
                    color: ColorConstants.mainWhite,
                    size: 30,
                  ),
                  Text(
                    "More",
                    style: TextStyle(
                      height: 1,
                      color: ColorConstants.mainWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.25,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildUserSelectionSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: List.generate(
          DummyDb.usersList.length + 1,
          (index) => index < DummyDb.usersList.length
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: UserNameCard(
                    height: index == 0 ? 68 : 60,
                    width: index == 0 ? 73 : 65,
                    image: DummyDb.usersList[index]["imagePath"],
                    name: DummyDb.usersList[index]["name"],
                  ),
                )
              : Column(
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 65,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: ColorConstants.mainWhite,
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Icon(
                        Icons.add,
                        color: ColorConstants.mainWhite,
                        size: 33,
                      ),
                    ),
                    Text(
                      "",
                      style: TextStyle(height: 2),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
