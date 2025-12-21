import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bouncingicon_Screen extends StatefulWidget {
  const Bouncingicon_Screen({super.key});

  @override
  State<Bouncingicon_Screen> createState() => _Bouncingicon_ScreenState();
}

class _Bouncingicon_ScreenState extends State<Bouncingicon_Screen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500), // Adjust duration as needed
      vsync: this,
    )..repeat(reverse: true); // This makes it jump up and down continuously

    // This tween defines the vertical movement range (e.g., from 0 offset to -50 pixels)
    // Offset is vertical, so negative goes up.
    _animation = Tween<double>(begin: 1, end: -5).animate(
      CurvedAnimation(
        parent: _controller,
        curve:
            Curves.easeInOut, // Gives a realistic bounce effect at the bottom
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  //
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        // Apply a vertical translation (y-offset)
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: child,
        );
      },
      child: const bounce(),
    );
  }
}

class bounce extends StatelessWidget {
  const bounce({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFED862D),
        borderRadius: BorderRadius.circular(25),
      ),
      width: 60,
      height: 60,

      child: const Center(
        child: Icon(Icons.groups, color: Colors.white, size: 40),
      ),
    );
  }
}
