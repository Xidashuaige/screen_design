import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String tagText;

  const Tag({
    Key? key,
    required this.tagText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Center(
          child: Text(
            tagText,
            style: const TextStyle(
              color: Color.fromARGB(255, 124, 124, 124),
            ),
          ),
        ),
      ),
    );
  }
}
