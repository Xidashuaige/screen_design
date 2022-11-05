import 'package:flutter/material.dart';
import 'package:screen_design/model/product.dart';
import 'package:screen_design/widgets/lower_context/friend_info.dart';
import 'package:screen_design/widgets/lower_context/progress_area.dart';
import 'package:screen_design/widgets/lower_context/relieve_stress_area.dart';
import 'package:screen_design/widgets/lower_context/techniques_area.dart';

class LowerInfo extends StatelessWidget {
  const LowerInfo({
    Key? key,
    required this.product,
    required this.screenSize,
  }) : super(key: key);

  final Product product;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Space border
          const SizedBox(
            height: 40,
          ),

          FriendInfo(
            product: product,
          ),

          ProgressArea(
            screenSize: screenSize,
            product: product,
          ),

          TechniquesArea(
            screenSize: screenSize,
            product: product,
          ),

          RelieveStressArea(
            screenSize: screenSize,
            product: product,
          )
        ],
      ),
    );
  }
}
