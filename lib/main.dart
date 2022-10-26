import 'package:flutter/material.dart';
import 'package:screen_design/model/product.dart';
import 'package:screen_design/screens/my_demo_sreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyDemoScreen(
        title: 'Flutter Demo Home Page',
        product: Product(
          name: "product",
          backgroundAssets: "assets/background.jpg",
        ),
      ),
    );
  }
}
