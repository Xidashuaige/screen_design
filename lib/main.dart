import 'package:flutter/material.dart';
import 'package:screen_design/model/product.dart';
import 'package:provider/provider.dart';

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

class MyDemoScreen extends StatelessWidget {
  final String title;
  final Product product;
  const MyDemoScreen({
    super.key,
    required this.title,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: product,
      child: Scaffold(
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Image.asset(product.backgroundAssets)),
          ],
        ),
      ),
    );
  }
}
