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
  final String friendIcon1;
  final String friendIcon2;
  final String friendIcon3;
  final String tag1;
  final String tag2;
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
    required this.friendIcon1,
    required this.friendIcon2,
    required this.friendIcon3,
    required this.tag1,
    required this.tag2,
    /*
    required this.imageAsset,
    required this.description,
    required this.price,
    this.variants = const [],
    this.features = const [],
    */
  });
}
