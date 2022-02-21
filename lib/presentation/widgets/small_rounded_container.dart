import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      padding: EdgeInsets.all(6.sp),
      decoration: BoxDecoration(
        color: color ?? AppColors.screenBackgroundColor,
        borderRadius: borderRadius ?? BorderRadius.circular(20.r),
        border: border,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w600,
          color: textColor??AppColors.textTitleColor,
        ),
      ),
    );
  }
}