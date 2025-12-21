import 'dart:ui';
import 'package:flutter/material.dart';

class SimpleBlurBackground extends StatelessWidget {
  const SimpleBlurBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return
    // Top-right circle
    Positioned(
      top: -100,
      right: -100,
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.brown.withOpacity(0.2),
          shape: BoxShape.circle,
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(color: Colors.black),
        ),
      ),
    );

    // Bottom-left circle
  }
}
