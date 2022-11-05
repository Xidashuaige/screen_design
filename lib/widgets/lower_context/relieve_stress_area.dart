import 'package:flutter/material.dart';
import 'package:screen_design/model/product.dart';

class RelieveStressArea extends StatelessWidget {
  const RelieveStressArea({
    Key? key,
    required this.screenSize,
    required this.product,
  }) : super(key: key);

  final Size screenSize;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          // background
          Container(
            width: screenSize.width - 10,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  spreadRadius: 1,
                  blurRadius: 15,
                  offset: const Offset(0, 10), // changes position of shadow
                ),
              ],
              color: const Color.fromARGB(255, 136, 201, 179),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),

          // context
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                // image
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                    image: DecorationImage(
                      image: AssetImage(product.landscapePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),

                // description
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Relieve stress",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    // Time
                    Row(
                      children: [
                        Icon(
                          Icons.av_timer,
                          color: Colors.grey[600],
                          size: 16,
                        ),
                        Text(
                          product.relieveTime,
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 20,
              ),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.amber[800],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
