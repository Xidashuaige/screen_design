import 'package:flutter/material.dart';
import 'package:screen_design/model/product.dart';
import 'package:screen_design/widgets/lower_context/subtitle.dart';

class TechniquesArea extends StatelessWidget {
  const TechniquesArea({
    Key? key,
    required this.screenSize,
    required this.product,
  }) : super(key: key);

  final Size screenSize;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SubTitle(text: "Techniques"),
        SizedBox(
          width: screenSize.width - 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              product.techniqueInfo1,
              product.techniqueInfo2,
            ],
          ),
        ),
      ],
    );
  }
}
