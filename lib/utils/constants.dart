import 'package:flutter/material.dart';

 const Color textTitleColor = Color(0xFF6E6E6E);
const Color listTileThinTextColor = Color(0xFF565656);


const TextTheme kTextThemeLarge = TextTheme(
    headline1: TextStyle(
        color: textTitleColor, fontWeight: FontWeight.w700, fontSize: 30),
    headline2: TextStyle(
        color: textTitleColor, fontWeight: FontWeight.w700, fontSize: 26),
    headline3: TextStyle(
        color: textTitleColor, fontWeight: FontWeight.w700, fontSize: 24),
    headline4: TextStyle(
        color: textTitleColor, fontWeight: FontWeight.w700, fontSize: 20),
    headline5: TextStyle(
        color: textTitleColor, fontWeight: FontWeight.w700, fontSize: 18),
    headline6: TextStyle(
        color: textTitleColor, fontWeight: FontWeight.w700, fontSize: 16),
    bodyText1: TextStyle(
        color: listTileThinTextColor, fontSize: 18, fontWeight: FontWeight.w500,height: 1.5),
    bodyText2: TextStyle(
        color:  listTileThinTextColor, fontSize: 18, fontWeight: FontWeight.w500,height: 1.5),
    subtitle1:
        TextStyle(color: listTileThinTextColor, fontSize: 16, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: listTileThinTextColor, fontSize: 16, fontWeight: FontWeight.w400));


const TextTheme kTextThemeDefault = TextTheme(
    headline1: TextStyle(
        color: textTitleColor, fontWeight: FontWeight.w700, fontSize: 26),
    headline2: TextStyle(
        color: textTitleColor, fontWeight: FontWeight.w700, fontSize: 22),
    headline3: TextStyle(
        color: textTitleColor, fontWeight: FontWeight.w700, fontSize: 20),
    headline4: TextStyle(
        color: textTitleColor, fontWeight: FontWeight.w700, fontSize: 16),
    headline5: TextStyle(
        color: textTitleColor, fontWeight: FontWeight.w700, fontSize: 14),
    headline6: TextStyle(
        color: textTitleColor, fontWeight: FontWeight.w700, fontSize: 12),
    bodyText1: TextStyle(
        color: listTileThinTextColor, fontSize: 14, fontWeight: FontWeight.w500,height: 1.5),
    bodyText2: TextStyle(
        color:  listTileThinTextColor, fontSize: 14, fontWeight: FontWeight.w500,height: 1.5),
    subtitle1:
        TextStyle(color: listTileThinTextColor, fontSize: 12, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: listTileThinTextColor, fontSize: 12, fontWeight: FontWeight.w400));


