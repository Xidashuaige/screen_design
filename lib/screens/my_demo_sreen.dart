import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen_design/model/product.dart';
import 'package:screen_design/widgets/upper_context/header_info.dart';

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
        body: Stack(children: [
          // background
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(product.backgroundAssets),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // context
          Column(
            children: [
              // upper screen context
              Expanded(
                flex: 4,
                child: HeaderInfo(product: product),
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
