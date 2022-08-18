import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../data/plant.dart';
import '../../../data/static_data.dart';
import '../../details/details_screen.dart';

class LatestOffersPlant extends StatelessWidget {
  const LatestOffersPlant({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: List.generate(
            StaticData.allPlants().length,
            (index) => DailyHighlightPlantCard(
                  image: StaticData.allPlants()[index].imageUrl,
                  title: StaticData.allPlants()[index].plantName,
                  description: StaticData.allPlants()[index].description,
                  price: StaticData.allPlants()[index].price,
                  plant: StaticData.allPlants()[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(plant: StaticData.allPlants()[index]),
                      ),
                    );
                  },
                  key: GlobalKey(),
                )),
      ),
    );
  }
}

class DailyHighlightPlantCard extends StatelessWidget {
  const DailyHighlightPlantCard({
    required Key key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.plant,
    required this.press,
  }) : super(key: key);

  final String image, title, description;
  final String price;
  final Plant plant;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
              ],
            ),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(title, textAlign: TextAlign.left),
                  Text(description, textAlign: TextAlign.left),
                  Text("Price: $price", textAlign: TextAlign.left),
                  ElevatedButton(
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(plant: plant),
                            ),
                          ),
                      child: const Text("Buy Now"))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
