import 'package:flutter/material.dart';
import 'package:plant_store/data/plant.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({super.key, required this.plant});

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: plant.plantName,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: kTextColor, fontWeight: FontWeight.bold),
                ),
                const WidgetSpan(
                    child: SizedBox(
                      width: 20, // your of space
                    )),
                TextSpan(
                  text: plant.description,
                  style: const TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            plant.price,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
