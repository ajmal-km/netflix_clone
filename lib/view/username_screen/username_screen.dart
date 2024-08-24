import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';
import 'package:netflix_clone/view/global_widgets/user_name_card.dart';

class UsernameScreen extends StatelessWidget {
  const UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        surfaceTintColor: ColorConstants.mainBlack,
        centerTitle: true,
        title: Image.asset(
          ImageConstants.LOGO,
          height: 37,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit_sharp,
              color: ColorConstants.mainWhite,
              size: 24,
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 75),
          shrinkWrap: true,
          itemCount: DummyDb.usersList.length + 1,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 25,
            mainAxisSpacing: 22,
            mainAxisExtent: 121,
          ),
          itemBuilder: (context, index) {
            return index < DummyDb.usersList.length
                ? UserNameCard(
                    image: DummyDb.usersList[index]["imagePath"],
                    name: DummyDb.usersList[index]["name"],
                    onTapped: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavBarScreen(),
                        ),
                      );
                    },
                  )
                : UserNameCard(
                    image: ImageConstants.ADD_BUTTON,
                    name: "Add User",
                    onTapped: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Feature not available",
                            style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.all(20),
                        ),
                      );
                    },
                  );
          },
        ),
      ),
    );
  }
}
