import 'package:flutter/material.dart';

class TextStyling extends StatelessWidget {
  final String text;
  final TextStyle? style; // Allow optional custom style

  const TextStyling(
    this.text, {
    this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          const TextStyle( // Fallback to default style
            color: Color(0xFFA1A1A1),
            fontSize: 16,
          ),
    );
  }
}