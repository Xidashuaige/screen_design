import 'package:flutter/material.dart';
import 'package:screen_design/widgets/lower_context/progress.dart';

class ProgressArea extends StatelessWidget {
  const ProgressArea({
    Key? key,
    required this.screenSize,
    required this.progressCount,
    required this.completed,
  }) : super(key: key);

  final Size screenSize;
  final int progressCount;
  final int completed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 16,
          ),
          child: Text(
            "Your progress",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: screenSize.width - 50,
          height: (screenSize.width - 50) / 6 * 2,
          child: GridView.count(
            crossAxisCount: 6,
            crossAxisSpacing: 16,
            mainAxisSpacing: 12,
            children: [
              for (int i = 0; i < progressCount; i++)
                Progress(
                  state: completed < i
                      ? ProgressState.lock
                      : completed == i
                          ? ProgressState.stay
                          : ProgressState.unlocked,
                  count: i,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
