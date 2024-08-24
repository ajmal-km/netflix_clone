import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/view/search_screen/widgets/search_screen_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.mainBlack,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _searchFieldSection(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 10),
              child: Text(
                "Top Searches",
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 26.75,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.5,
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => SearchScreenCard(
                  url: DummyDb.searchScreenData[index]["url"],
                  title: DummyDb.searchScreenData[index]["title"],
                ),
                separatorBuilder: (context, index) => SizedBox(height: 3),
                itemCount: DummyDb.searchScreenData.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchFieldSection() {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorConstants.darkGrey,
        prefixIcon: Icon(
          Icons.search_rounded,
          color: ColorConstants.mainWhite,
        ),
        hintText: "Search for a show, movie, genre, etc",
        hintStyle: TextStyle(
          color: ColorConstants.mainWhite,
          fontSize: 15.21,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: Icon(
          Icons.mic,
          color: ColorConstants.mainWhite,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
