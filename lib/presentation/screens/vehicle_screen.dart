import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/presentation/widgets/rounder_icon_button.dart';
import 'package:my_garage/presentation/widgets/text_widgets.dart';
import 'package:my_garage/utils/colors.dart';
import 'package:my_garage/utils/dimensions.dart';

class VehicleScreen extends StatelessWidget {
  final Car car;
  const VehicleScreen({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sidePadding = EdgeInsets.symmetric(horizontal: 15.sp);
    final carY = car.year;
    final year = DateFormat('yyyy').format(carY);

    return Scaffold(
      body: SizedBox(
        height: Dimensions.screenHeight,
        width: Dimensions.screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 34,
              child: SizedBox(
                height: Dimensions.screenHeight / 3,
                child: Stack(
                  children: [
                    car.imageUrl.isNotEmpty
                        ? Image.file(
                            File(car.imageUrl),
                            fit: BoxFit.cover,
                            width: double.infinity,
                          )
                        :  SizedBox(
                            height: 130.h,
                            width: double.infinity,
                          ),
                    Positioned(
                      width: Dimensions.screenWidth,
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
              ),
            ),
            Expanded(
              flex: 32,
              child: Container(
                width: Dimensions.screenWidth,
                padding: EdgeInsets.symmetric(
                  horizontal:20.h,
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
                    VehicleScreenText(
                      label: 'Licence number',
                      text: car.licenceNumber,
                    ),
                    const Divider(
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 34,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 5.w,
                ),
                width: Dimensions.screenWidth,
                color: AppColors.screenBackgroundColor,
                child: EasyText(
                  car.description,
                  color: AppColors.textColor,
                ),
              ),
            )
          ],
        ),
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
          color: Colors.blue,
          fontSize: 12.sp,
        ),
        EasyText(
          text,
          color: AppColors.listTileBrandTextColor,
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}
