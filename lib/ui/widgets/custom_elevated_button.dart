import 'package:flutter/material.dart';
import 'package:team_5_motionhack/common/styles/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? backgroundColor;
  final double? minWidth;
  final double? minHeight;
  final double borderRadius;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? textColor;
  final Color? foregroundColor;
  final BorderSide? borderSide;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor,
    this.minWidth,
    this.minHeight,
    this.borderRadius = 20.0,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 14.0,
    this.textColor,
    this.foregroundColor,
    this.borderSide,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? kColorScheme.primary,
        foregroundColor: foregroundColor ?? kColorScheme.onSecondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: borderSide ?? BorderSide.none,
        ),
        minimumSize: Size(minWidth ?? double.infinity, minHeight ?? 40),
        shadowColor: Colors.transparent,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: textColor ?? kColorScheme.background,
        ),
      ),
    );
  }
}
