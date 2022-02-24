import 'package:flutter/material.dart';
import 'package:my_garage/utils/colors.dart';

class SmallRoundedContainer extends StatelessWidget {
  const SmallRoundedContainer({
    Key? key,
    required this.text,
    this.color,
    this.border,
    this.borderRadius,
    this.textColor,
  }) : super(key: key);
  final String text;
  final Color? color;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: color ?? AppColors.screenBackgroundColor,
        borderRadius: borderRadius ?? BorderRadius.circular(20),
        border: border,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: textColor??AppColors.textTitleColor,
        ),
      ),
    );
  }
}