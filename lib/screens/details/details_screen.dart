import 'package:flutter/material.dart';
import 'package:plant_store/data/plant.dart';
import './components/detail_page_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.plant});

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return DetailPageBody(plant);
  }
}
