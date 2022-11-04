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
      child: Padding(
        padding: const EdgeInsets.only(
          right: 40,
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
            SizedBox(
              height: 6,
            ),
            Text(
              "Spendinf a few minutes in meditation can improve mental health",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
