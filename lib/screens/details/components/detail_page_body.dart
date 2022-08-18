import 'package:flutter/material.dart';
import 'package:plant_store/screens/all_product/all_product.dart';

import '../../../checkout/checkout.dart';
import '../../../constants.dart';
import '../../../data/plant.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class DetailPageBody extends StatelessWidget {
  const DetailPageBody(this.plant);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(
            size: size,
            img: plant.imageUrl,
            key: GlobalKey(),
          ),
          TitleAndPrice(plant: plant),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    )),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Checkout(
                        plant: plant,
                      );
                    }));
                  },
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const AllProduct();
                    }));
                  },
                  child: const Text(
                    "Continue Shopping",
                    style: TextStyle(color: Colors.green, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
