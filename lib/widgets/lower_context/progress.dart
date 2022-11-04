import 'package:flutter/material.dart';

enum ProgressState {
  unlocked,
  stay,
  lock,
}

class Progress extends StatelessWidget {
  const Progress({
    Key? key,
    required this.state,
    required this.count,
  }) : super(key: key);

  final ProgressState state;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // background
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: state == ProgressState.unlocked
                ? Colors.amber
                : state == ProgressState.stay
                    ? const Color.fromARGB(255, 255, 143, 255)
                    : const Color.fromARGB(255, 189, 189, 189),
          ),
          color: state == ProgressState.stay ? Colors.amber[800] : null,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),

        // Icon/number
        child: state == ProgressState.unlocked
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
