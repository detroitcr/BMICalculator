import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String? text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final String? fontFamily;

  const MyText(
      {this.text, this.size, this.fontColor, this.fontFamily, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: GoogleFonts.dongle(
        fontSize: size,
        color: fontColor,
        fontWeight: fontWeight,
      ),
    );
  }
}
