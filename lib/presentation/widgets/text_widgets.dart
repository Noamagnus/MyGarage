import 'package:flutter/material.dart';

class EasyText extends StatelessWidget {
  const EasyText(
    this.text, {
    Key? key,
    this.fontSize,
    this.fontWeight,
    this.color,
  }) : super(key: key);
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        // textBaseline: TextBaseline.ideographic
      ),
    );
  }
}

class EasyTextButton extends StatelessWidget {
  const EasyTextButton({
    Key? key,
    this.backgroundColor,
    this.radius,
    required this.buttonTitle,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    required this.onPressed,
  }) : super(key: key);
  final Color? backgroundColor;
  final double? radius;
  final String buttonTitle;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor ?? Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(radius ?? 6),
              ),
            )),
        onPressed: onPressed,
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: textColor ?? const Color(0xFF757575),
          ),
        ));
  }
}
