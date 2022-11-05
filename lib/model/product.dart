import 'package:flutter/material.dart';
import 'package:screen_design/widgets/lower_context/tecnique_info.dart';

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

  // For ProgressArea
  final int progressCount;
  final int progressCompleted;

  // For TechniquesArea
  final TechniqueInfo techniqueInfo1;
  final TechniqueInfo techniqueInfo2;

  // For RelieveStressArea
  final String landscapePath;
  final String relieveTime;
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
    required this.progressCount,
    required this.progressCompleted,
    required this.techniqueInfo1,
    required this.techniqueInfo2,
    required this.landscapePath,
    required this.relieveTime,
  });
}
