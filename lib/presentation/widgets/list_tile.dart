import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'package:my_garage/utils/colors.dart';
import 'package:my_garage/utils/widget_functions.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.brand,
    required this.licenceNumber,
    required this.description,
    required this.year,
    required this.path,
    required this.isRegistered,
  }) : super(key: key);
  final String brand;
  final String licenceNumber;
  final String description;
  final DateTime year;
  final String path;
  final bool isRegistered;

  @override
  Widget build(BuildContext context) {
    final selectedYear = DateFormat('yyyy').format(year);
    return Container(
      height: 130.h,
      margin: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 6.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.listTileBackgroundColor,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: AppColors.listTileBorderColor,
          width: 0.5.sp,
        ),
      ),
      padding: EdgeInsets.all(10.sp),
      child: Row(
        children: [
          Expanded(
            flex: 45,
            child: SizedBox(
              height: 110.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.r),
                child: path.isNotEmpty
                    ? Image.file(
                        File(path),
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )
                    : Container(),
              ),
            ),
          ),
          Expanded(
            flex: 55,
            child: Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 25,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20.h,
                          width: 6.w,
                          color: AppColors.blueColor,
                        ),
                        addHorizontalSpace(8.w),
                        Text(
                          brand,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w900,
                            color: AppColors.grey700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 17,
                    child: Text(
                      licenceNumber,
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.listTileThinTextColor,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 18,
                    child: Text(
                      selectedYear,
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.listTileThinTextColor,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 50,
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: isRegistered
                            ? const SmallRoundedContainer(
                                text: 'Registered',
                              )
                            : const SmallRoundedContainer(text: 'Not Registered')),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

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
