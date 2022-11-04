import 'package:flutter/material.dart';
import 'package:screen_design/model/product.dart';

class FriendIcon extends StatelessWidget {
  const FriendIcon({
    Key? key,
    required this.product,
    required this.iconPath,
  }) : super(key: key);

  final Product product;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,

      // background
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFFF5F5F5),
            spreadRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
        color: Color.fromARGB(255, 136, 201, 179),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),

      // Image
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(iconPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
