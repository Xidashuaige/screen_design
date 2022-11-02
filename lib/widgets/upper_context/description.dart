import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Stress course",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          Text(
            "Sint velit deserunt ad incididunt et consequat dolor. Enim in excepteur voluptate proident labore quis aliquip incididunt consequat ullamco exercitation do. Consectetur Lorem tempor commodo deserunt excepteur. Lorem ipsum Lorem elit laboris tempor veniam cillum culpa excepteur aliquip irure exercitation commodo ullamco.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
