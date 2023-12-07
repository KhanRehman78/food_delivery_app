import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double? height;
  final BorderRadiusGeometry? circularRadius;
  final Color? containerColor;
  final String text;
  final double? width;
  final IconData? icon;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextDecoration? decoration;
  final TextOverflow? overflow;
  final double? letterSpacing;
  final void Function()? onTap;
  final List<BoxShadow>? boxShadow;
  final BoxBorder? border;

  const MyButton(
      {super.key,
        this.circularRadius,
        this.containerColor,
        required this.text,
        this.fontSize,
        this.fontWeight,
        this.color,
        this.decoration,
        this.overflow,
        this.letterSpacing,
        this.onTap,
        this.height, this.boxShadow, this.border, this.width, this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration:
        BoxDecoration(
            boxShadow: boxShadow,
            border: border,
            borderRadius: circularRadius,
            color: containerColor),
        child: Center(
            child: Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: fontSize,
                      color: color,
                      fontWeight: fontWeight,
                      decoration: decoration,
                      letterSpacing: letterSpacing,
                      overflow: overflow),
                ),
              ],
            )),
      ),
    );
  }
}
