import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../data/static_data.dart';
import '../../details/details_screen.dart';

class DailyHighlights extends StatelessWidget {
  const DailyHighlights({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: StaticData.dailyHighLight()
            .map(
              (plant) => HighlightCard(
                image: plant.imageUrl,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(plant: plant),
                    ),
                  );
                },
                key: GlobalKey(),
              ),
            )
            .toList(),
      ),
    );
  }
}

class HighlightCard extends StatelessWidget {
  const HighlightCard({
    required Key key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
