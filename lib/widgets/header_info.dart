import 'package:flutter/material.dart';
import 'package:screen_design/model/product.dart';

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
        Container(
          // BackGround
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(product.backgroundAssets),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text("Stress course"),
            Text(
                "Sint velit deserunt ad incididunt et consequat dolor. Enim in excepteur voluptate proident labore quis aliquip incididunt consequat ullamco exercitation do. Consectetur Lorem tempor commodo deserunt excepteur. Lorem ipsum Lorem elit laboris tempor veniam cillum culpa excepteur aliquip irure exercitation commodo ullamco."),
          ],
        )
      ],
    );
  }
}
