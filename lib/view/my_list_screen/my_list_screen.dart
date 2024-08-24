import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _myListHeaderSection(),
            _buildMovieGridSection()
          ],
        ),
      ),
    );
  }

  Widget _myListHeaderSection() {
    return Padding(
            padding: const EdgeInsets.only(left: 12, top: 10),
            child: Row(
              children: <Widget>[
                Image.asset(
                  ImageConstants.NETFLIX_N,
                  height: 57,
                  width: 53,
                ),
                Text(
                  "My List",
                  style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.76,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.arrow_drop_down,
                  color: ColorConstants.mainWhite,
                  size: 27,
                ),
              ],
            ),
          );
  }

  Widget _buildMovieGridSection() {
    return Expanded(
            child: GridView.builder(
              itemCount: DummyDb.imageList2.length,
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 170,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  color: Colors.red[700],
                  image: DecorationImage(
                    image: NetworkImage(DummyDb.imageList2[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
  }
}
