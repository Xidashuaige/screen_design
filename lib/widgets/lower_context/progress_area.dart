import 'package:flutter/material.dart';
import 'package:screen_design/model/product.dart';
import 'package:screen_design/widgets/lower_context/progress.dart';
import 'package:screen_design/widgets/lower_context/subtitle.dart';

class ProgressArea extends StatelessWidget {
  const ProgressArea({
    Key? key,
    required this.screenSize,
    required this.product,
  }) : super(key: key);

  final Size screenSize;
  final Product product;

  @override
  Widget build(BuildContext context) {
    final int progressColum = (product.progressCount / 6).ceil();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text
        const SubTitle(
          text: "Your progress",
        ),

        // Progress
        SizedBox(
          width: screenSize.width - 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0, counter = 0;
                  i < progressColum && counter < product.progressCount;
                  i++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 6; i++, counter++)
                      Progress(
                        state: counter >= product.progressCount
                            ? ProgressState.unknow
                            : product.progressCompleted > counter
                                ? ProgressState.unlocked
                                : product.progressCompleted == counter
                                    ? ProgressState.stay
                                    : ProgressState.lock,
                        count: i,
                        progressSize: Size(
                          (screenSize.width - 90) / 6,
                          (screenSize.width - 90) / 6,
                        ),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}
