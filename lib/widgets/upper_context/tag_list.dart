import 'package:flutter/material.dart';
import 'package:screen_design/widgets/upper_context/tag.dart';

class TagList extends StatelessWidget {
  const TagList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Tag(
          tagText: "9 sessions",
        ),
        SizedBox(width: 6),
        Tag(
          tagText: "100 + min of mindfulness",
        ),
      ],
    );
  }
}
