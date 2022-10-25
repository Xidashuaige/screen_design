import 'dart:ui';

class Variant {
  String name;
  Color color;
  Variant(this.name, this.color);
}

class Feature {
  String icon;
  num value;
  String units;
  Feature(this.icon, this.value, this.units);
}

class Product {
  final String name;
  final String backgroundAssets;
  /*
  String imageAsset;
  String description;
  List<Variant> variants;
  List<Feature> features;
  double price;
  bool favorite = false;
  */
  Product({
    required this.name,
    required this.backgroundAssets,
    /*
    required this.imageAsset,
    required this.description,
    required this.price,
    this.variants = const [],
    this.features = const [],
    */
  });
}
