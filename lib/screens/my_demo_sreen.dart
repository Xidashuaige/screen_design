import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen_design/model/product.dart';
import 'package:screen_design/widgets/background.dart';
import 'package:screen_design/widgets/upper_context/upper_info.dart';

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
    final screenSize = MediaQuery.of(context).size;
    return Provider.value(
      value: product,
      child: Scaffold(
        body: Stack(children: [
          // background
          Background(screenSize: screenSize, product: product),
          // context
          Column(
            children: [
              // upper screen context
              Expanded(
                flex: 3,
                child: UpperInfo(product: product),
              ),

              // lower screen context
              Expanded(
                flex: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
