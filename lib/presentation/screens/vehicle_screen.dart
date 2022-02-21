import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/presentation/widgets/list_tile.dart';
import 'package:my_garage/presentation/widgets/rounder_icon_button.dart';
import 'package:my_garage/presentation/widgets/text_widgets.dart';
import 'package:my_garage/utils/colors.dart';
import 'package:my_garage/utils/dimensions.dart';
import 'package:my_garage/utils/helper_functiones.dart';
import 'package:my_garage/utils/widget_functions.dart';

class VehicleScreen extends StatelessWidget {
  final Car car;
  const VehicleScreen({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sidePadding = EdgeInsets.symmetric(horizontal: 15.sp);
    final carYear = car.year;
    final year = DateFormat('yyyy').format(carYear);

    return Scaffold(
      backgroundColor: AppColors.screenBackgroundColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? SizedBox(
                  height: Dimensions.screenHeight,
                  width: Dimensions.screenWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 34,
                        child: StackImageWithButtons(car: car, sidePadding: sidePadding),
                      ),
                      Expanded(
                        flex: 32,
                        child: Container(
                          width: Dimensions.screenWidth,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 12.w,
                          ),
                          color: AppColors.screenBackgroundColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              VehicleScreenText(
                                label: 'Brand',
                                text: car.brand,
                              ),
                              VehicleScreenText(
                                label: 'Year',
                                text: year,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  VehicleScreenText(
                                    label: 'Licence number',
                                    text: car.licenceNumber,
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  SmallRoundedContainer(
                                    color: AppColors.white,
                                    text: isRegistered(car.year) ? 'Registered' : 'Not Registered',
                                    border: Border.all(color: AppColors.blueColor, width: 0.5.sp),
                                    borderRadius: BorderRadius.circular(30.r),
                                    textColor: AppColors.blueColor,
                                  ),
                                  addHorizontalSpace(10),
                                  SmallRoundedContainer(
                                    color: AppColors.white,
                                    text: car.isServiced ? 'Serviced' : 'Not Serviced',
                                    border: Border.all(color: AppColors.blueColor, width: 0.5.sp),
                                    borderRadius: BorderRadius.circular(30.r),
                                    textColor: AppColors.blueColor,
                                  )
                                ],
                              ),
                              const Divider(
                                height: 0,
                                color: AppColors.blueColor,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 34,
                        child: DescriptionStack(car: car),
                      )
                    ],
                  ),
                )
              : StackImageWithButtons(
                  car: car,
                  sidePadding: sidePadding,
                  height: Dimensions.screenWidth,
                  width: Dimensions.screenHeight,
                );
        },
      ),
    );
  }
}

 class DescriptionStack extends StatelessWidget {
  const DescriptionStack({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        // top: 20.h,
        left: 20.w,
        right: 20.w,
        bottom: 20.w,
      ),
      width: Dimensions.screenWidth,
      color: AppColors.screenBackgroundColor,
      child: Container(
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EasyText(
              'Description',
              fontSize: 16.sp,
              color: AppColors.grey600,
              fontWeight: FontWeight.w700,
            ),
            addVerticalSpace(8.h),
            Container(
              height: 130,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: EasyText(
                  car.description,
                  color: AppColors.grey500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StackImageWithButtons extends StatelessWidget {
  const StackImageWithButtons({
    Key? key,
    required this.car,
    required this.sidePadding,
    this.height,
    this.width,
  }) : super(key: key);

  final Car car;
  final EdgeInsets sidePadding;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? Dimensions.screenHeight / 3,
      child: Stack(
        children: [
          car.imageUrl.isNotEmpty
              ? Image.file(
                  File(car.imageUrl),
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : SizedBox(
                  height: 130.h,
                  width: double.infinity,
                ),
          Positioned(
            width: width ?? Dimensions.screenWidth,
            top: 15.h,
            child: Padding(
              padding: sidePadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundedIconButton(
                    size: 30.sp,
                    icon: Icons.keyboard_backspace,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  RoundedIconButton(
                    size: 30.sp,
                    icon: Icons.delete,
                    onPressed: () {
                      context.read<GarageBloc>().add(RemoveCarFromGarage(car));
                      Navigator.of(context).pop();
                    },
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

class VehicleScreenText extends StatelessWidget {
  const VehicleScreenText({
    Key? key,
    required this.text,
    required this.label,
  }) : super(key: key);
  final String text;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EasyText(
          label,
          color: AppColors.blueColor,
          fontSize: 12.sp,
        ),
        EasyText(
          text,
          color: AppColors.grey600,
          fontSize: 20.sp,
          fontWeight: FontWeight.w800,
        ),
      ],
    );
  }
}
