import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen_design/model/product.dart';
import 'package:screen_design/widgets/header_info.dart';

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
          children: [
            Expanded(
              flex: 4,
              child: HeaderInfo(product: product),
            ),
            const Expanded(
              flex: 5,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
