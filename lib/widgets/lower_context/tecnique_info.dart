import 'package:flutter/material.dart';

class TechniqueInfo extends StatelessWidget {
  const TechniqueInfo({
    Key? key,
    required this.contextIcon,
    required this.text,
  }) : super(key: key);

  final Icon contextIcon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: (screenSize.width - 70) / 2 > 200
              ? 200
              : (screenSize.width - 70) / 2,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset:
                            const Offset(0, 10), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: contextIcon),
              const SizedBox(
                width: 8,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
