import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Button extends StatelessWidget {
  final Widget child;
  final Color colour;
  final Function() onClick;
  const Button({
    Key? key,
    required this.child,
    required this.onClick,
    this.colour = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: colour,
        ),
        child: Center(child: child),
      ),
    );
  }
}
