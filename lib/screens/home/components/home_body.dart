import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'daily_highlights.dart';
import 'header_and_search_box.dart';
import 'latest_offers_plants.dart';
import 'title_with_more_btn.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It will provide us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderAndSearchBox(
            size: size,
            key: const Key("___HeaderAndSearchBox___KEY"),
          ),
          TitleWithMoreBtn(
            title: "Deals of the day",
            press: () {},
            key: const Key("TitleWithMoreBtn___KEY____TitleWithMoreBtn"),
          ),
          const LatestOffersPlant(
            key: Key("__KEY__LatestOffersPlant__"),
          ),
          TitleWithMoreBtn(
            title: "Highlights",
            press: () {},
            key: const Key("___TitleWithMoreBtn__"),
          ),
          const DailyHighlights(
            key: Key("___DailyHighlights__KEY__KEY"),
          ),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
