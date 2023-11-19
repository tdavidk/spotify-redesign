import 'package:flutter/material.dart';
import 'package:spotify/res/colours.dart';

class ButtonPrimary extends StatelessWidget {
  final double? width;
  final double? height;
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final VoidCallback? onPressed;
  const ButtonPrimary({
    super.key,
    this.width = double.infinity,
    this.height = 92,
    required this.title,
    this.fontSize = 22,
    this.fontWeight = FontWeight.bold,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colours.green,
          foregroundColor: Colours.white,
          shadowColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: Colours.white,
          ),
        ),
      ),
    );
  }
}
