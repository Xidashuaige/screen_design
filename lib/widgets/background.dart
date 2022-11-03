import 'package:flutter/material.dart';
import 'package:screen_design/model/product.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.screenSize,
    required this.product,
  }) : super(key: key);

  final Size screenSize;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: screenSize.height / 2,
        width: screenSize.width,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(product.backgroundAssets),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
