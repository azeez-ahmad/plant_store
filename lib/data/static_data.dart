import 'package:plant_store/data/plant.dart';

class StaticData {
  static List<Plant> allPlants() {
    return [
      Plant("Lotus", "20% OFF",
          "\$15.99", "assets/products/lotus.png"),
      Plant(
          "Rose",
          "75% OFF",
          "\$20.99",
          "assets/products/rose.png"),
      Plant("Lilly", "10% OFF", "\$25.99",
          "assets/products/lilly.png"),
      Plant(
          "Tulip",
          "50% OFF",
          "\$30.99",
          "assets/products/tulip.png"),
      Plant("Daisy", "7% OFF", "\$35.99",
          "assets/products/daisy.png"),
      Plant("Sunflower", "80% OFF", "\$40.99",
          "assets/products/sunflower.png"),
      Plant("Poppy", "10% OFF",
          "\$45.99", "assets/products/poppy.png"),
      Plant("Cactus", "20% OFF",
          "\$50.99", "assets/products/cactus.png"),
      Plant(
          "Cherry",
          "90% OFF",
          "\$55.99",
          "assets/products/cherry.png"),
      Plant(
          "Pine",
          "50% OFF",
          "\$60.99",
          "assets/products/pine.png"),
      Plant(
          "Lavender",
          "10% OFF",
          "\$65.99",
          "assets/products/lavender.png"),
      Plant(
          "Orchid",
          "50% OFF",
          "\$70.99",
          "assets/products/orchid.png"),
      Plant(
          "Cherry Blossom",
          "10% OFF",
          "\$75.99",
          "assets/products/cherry-blossom.png"),
      Plant(
          "Bluebell",
          "15% OFF",
          "\$80.99",
          "assets/products/bluebell.png")
    ];
  }

  static List<Plant> dailyHighLight() {
    return [
      Plant("Lotus", "Symbol of purity, enlightenment, self-regeneration.",
          "\$15.99", "assets/products/lotus.png")
      ,
      Plant(
          "Orchid",
          "While orchids mean thoughtfulness, refinement, fertility, beauty, charm, and love.",
          "\$70.99",
          "assets/products/orchid.png"),
      Plant(
          "Pine",
          "A pine tree is a conifer for which health benefits and therapeutic value is backed by many medicinal properties.",
          "\$60.99",
          "assets/products/pine.png"),
      Plant("Daisy", "Symbolize purity and innocence", "\$35.99"
          ,
          "assets/products/daisy.png"),

      Plant("Lilly", "White lilies symbolize purity and virtue", "\$25.99",
          "assets/products/lilly.png"),
    ];
  }

}
