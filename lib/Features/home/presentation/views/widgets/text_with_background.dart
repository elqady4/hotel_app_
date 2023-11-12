import 'package:flutter/material.dart';

class TextWithBackground extends StatelessWidget {
  const TextWithBackground({super.key, required this.color, required this.text, this.padding});

  final Color color;
  final Text text;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: color,
                ),
                padding:  EdgeInsets.all(padding ?? 10),
                child: text,
              );
  }
}