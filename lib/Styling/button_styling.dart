import 'package:flutter/material.dart';

class ButtonStyling extends StatelessWidget {
  const ButtonStyling({
    super.key,
    required this.onPressed,
    required this.child,
    });

    final Widget child;
    final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(child: child,
    onPressed: onPressed);
  }
}