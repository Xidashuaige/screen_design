import 'package:flutter/material.dart';
import 'package:screen_design/model/product.dart';
import 'package:screen_design/widgets/upper_context/custom_button.dart';
import 'package:screen_design/widgets/upper_context/description.dart';
import 'package:screen_design/widgets/upper_context/tag.dart';

class UpperInfo extends StatelessWidget {
  const UpperInfo({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Descriptions
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Description
              const Description(),
              const SizedBox(
                height: 20,
              ),
              // Tags
              Row(
                children: [
                  Tag(tagText: product.tag1),
                  Tag(tagText: product.tag2),
                ],
              )
            ],
          ),
        ),

        // Icon
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CutomButton(
                myIcon: Icons.arrow_back,
              ),
              CutomButton(
                myIcon: Icons.favorite_border,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
