import 'package:flutter/material.dart';

/// A button widget specifically designed for the math keyboard.
class KeyboardButton extends StatelessWidget {
  /// Creates a keyboard button.
  const KeyboardButton({
    Key? key,
    required this.child,
    this.onTap,
    this.color,
  }) : super(key: key);

  /// The widget below this widget in the tree.
  final Widget child;

  /// Called when the button is tapped.
  final VoidCallback? onTap;

  /// The color of the button.
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? Colors.grey[100],
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
