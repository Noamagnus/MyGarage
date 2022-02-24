import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/business_logic/vehicle_details/bloc/vehicle_details_bloc.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/presentation/widgets/rounder_icon_button.dart';
import 'package:my_garage/presentation/widgets/small_rounded_container.dart';
import 'package:my_garage/presentation/widgets/text_widgets.dart';
import 'package:my_garage/utils/colors.dart';
import 'package:my_garage/utils/dimensions.dart';
import 'package:my_garage/utils/helper_functions.dart';
import 'package:my_garage/utils/widget_functions.dart';

class VehicleScreen extends StatelessWidget {
  // final Car car;
  const VehicleScreen({
    Key? key,
    // required this.car,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.read<VehicleDetailsBloc>().state;
    final sidePadding = EdgeInsets.symmetric(horizontal: 15);
    return state.maybeWhen(
      loaded: (car) {
        final year = DateFormat('yyyy').format(car.year);
        return SafeArea(
          child: Scaffold(
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
                                  horizontal: 20,
                                  vertical: 12,
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
                                          text: isRegistered(car.year)
                                              ? 'Registered'
                                              : 'Not Registered',
                                          border:
                                              Border.all(color: AppColors.blueColor, width: 0.5),
                                          borderRadius: BorderRadius.circular(30),
                                          textColor: AppColors.blueColor,
                                        ),
                                        addHorizontalSpace(10),
                                        SmallRoundedContainer(
                                          color: AppColors.white,
                                          text: car.isServiced ? 'Serviced' : 'Not Serviced',
                                          border:
                                              Border.all(color: AppColors.blueColor, width: 0.5),
                                          borderRadius: BorderRadius.circular(30),
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
          ),
        );
      },
      orElse: () => Text('Or Else'),
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
        left: 20,
        right: 20,
        bottom: 20,
      ),
      width: Dimensions.screenWidth,
      color: AppColors.screenBackgroundColor,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EasyText(
              'Description',
              fontSize: 16,
              color: AppColors.grey600,
              fontWeight: FontWeight.w700,
            ),
            addVerticalSpace(8),
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
                  height: 130,
                  width: double.infinity,
                ),
          Positioned(
            width: width ?? Dimensions.screenWidth,
            top: 15,
            child: Padding(
              padding: sidePadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundedIconButton(
                    size: 30,
                    icon: Icons.keyboard_backspace,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  RoundedIconButton(
                    size: 30,
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
          fontSize: 12,
        ),
        EasyText(
          text,
          color: AppColors.grey600,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ],
    );
  }
}
