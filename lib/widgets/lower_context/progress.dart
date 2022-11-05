import 'package:flutter/material.dart';

enum ProgressState {
  unlocked,
  stay,
  lock,
  unknow,
}

class Progress extends StatelessWidget {
  const Progress({
    Key? key,
    required this.state,
    required this.count,
    required this.progressSize,
  }) : super(key: key);

  final Size progressSize;
  final ProgressState state;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 6,
      ),
      child: Container(
        height: progressSize.width > 50 ? 50 : progressSize.width,
        width: progressSize.height > 50 ? 50 : progressSize.height,
        // background
        decoration: state == ProgressState.unknow
            ? null
            : BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: state == ProgressState.unlocked
                      ? Colors.amber
                      : state == ProgressState.stay
                          ? const Color.fromARGB(255, 255, 143, 0)
                          : const Color.fromARGB(255, 189, 189, 189),
                ),
                color: state == ProgressState.stay ? Colors.amber[800] : null,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),

        // Icon/number
        child: state == ProgressState.unknow
            ? null
            : state == ProgressState.unlocked
                ? const Icon(
                    Icons.done,
                    color: Colors.amber,
                  )
                : state == ProgressState.stay
                    ? Center(
                        child: Text(
                          "$count",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : Icon(
                        Icons.lock_outline,
                        color: Colors.grey[400],
                      ),
      ),
    );
  }
}
