import 'package:flutter/material.dart';

class MainButtonStyling extends StatelessWidget {
  const MainButtonStyling({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final Text child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(Icons.add, size: 20), // Optional icon
      label: child,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFFFF6600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      ),
      onPressed: onPressed,
    );
  }
}
