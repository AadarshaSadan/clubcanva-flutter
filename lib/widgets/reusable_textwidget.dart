import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Text_widget extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontsize;
  final Color color;
  final TextAlign textalign;
  const Text_widget({
    super.key,
    required this.text,
    required this.fontWeight,
    required this.fontsize,
    required this.color,
    required this.textalign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        fontWeight: fontWeight,
        fontSize: fontsize,
        color: color,
      ),
      textAlign: textalign,
    );
  }
}
