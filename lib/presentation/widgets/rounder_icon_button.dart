import 'package:flutter/material.dart';
import 'package:my_garage/utils/colors.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    Key? key,
    this.size = 30,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);
  final double size;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: AppColors.iconButtonBackground,
          borderRadius: BorderRadius.circular(size / 2),
          border: Border.all(
            color: AppColors.iconButtonBorderColor,
            width: 0.5,
          ), // to make it circle
        ),
        child: Icon(
          icon,
          color: AppColors.iconButtonIconColor,
          size: 22,
        ),
      ),
    );
  }
}
