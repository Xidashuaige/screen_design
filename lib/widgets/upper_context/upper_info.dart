import 'package:flutter/material.dart';
import 'package:screen_design/model/product.dart';
import 'package:screen_design/widgets/upper_context/description.dart';
import 'package:screen_design/widgets/upper_context/tag_list.dart';

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
        // Description
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Description(),
              TagList(),
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

class CutomButton extends StatelessWidget {
  final IconData myIcon;
  const CutomButton({
    Key? key,
    required this.myIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
        color: Colors.grey[50],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(myIcon),
        ),
      ),
    );
  }
}
