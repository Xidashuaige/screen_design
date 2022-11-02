import 'package:flutter/material.dart';
import 'package:screen_design/model/product.dart';
import 'package:screen_design/widgets/upper_context/description.dart';
import 'package:screen_design/widgets/upper_context/tag_list.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({
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
          padding: const EdgeInsets.all(16.0),
          child: Material(
            elevation: 10,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: const Center(child: Icon(Icons.share)),
            ),
          ),
        ),
      ],
    );
  }
}
