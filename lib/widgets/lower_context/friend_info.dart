import 'package:flutter/material.dart';
import 'package:screen_design/model/product.dart';
import 'package:screen_design/widgets/lower_context/friend_icon.dart';

class FriendInfo extends StatelessWidget {
  const FriendInfo({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              FriendIcon(
                product: product,
                iconPath: product.friendIcon1,
              ),
              FriendIcon(
                product: product,
                iconPath: product.friendIcon2,
              ),
              FriendIcon(
                product: product,
                iconPath: product.friendIcon3,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  child: Text(
                    "3 friends have already finished the course",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
