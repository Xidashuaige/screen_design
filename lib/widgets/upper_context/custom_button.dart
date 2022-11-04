import 'package:flutter/material.dart';

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
