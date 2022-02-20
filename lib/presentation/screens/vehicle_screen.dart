import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/presentation/widgets/rounder_icon_button.dart';
import 'package:my_garage/utils/colors.dart';
import 'package:my_garage/utils/dimensions.dart';
import 'package:my_garage/utils/widget_functions.dart';

class VehicleScreen extends StatelessWidget {
  final Car car;
  const VehicleScreen({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final sidePadding = EdgeInsets.symmetric(horizontal: 25);
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
                        : const SizedBox(
                            height: 130,
                            width: double.infinity,
                          ),
                    Positioned(
                      width: Dimensions.screenWidth,
                      top: 25,
                      child: Padding(
                        padding: sidePadding,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RoundedIconButton(
                              size: 35,
                              icon: Icons.keyboard_backspace,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            RoundedIconButton(
                              size: 35,
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
              flex: 30,
              child: Container(
                width: Dimensions.screenWidth,
                padding: sidePadding,
                color: AppColors.screenBackgroundColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    VehicleScreenText(
                      label: 'Brand',
                      text: car.brand,
                      themeData: themeData,
                    ),
                    VehicleScreenText(
                      label: 'Year',
                      text: year,
                      themeData: themeData,
                    ),
                    VehicleScreenText(
                      label: 'Licence Number',
                      text: car.licenceNumber,
                      themeData: themeData,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 36,
              child: Container(
                padding:const  EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                width: Dimensions.screenWidth,
                color: Colors.red,
                child: Text(
                  car.description,
                  style: themeData.textTheme.bodyText2,
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
    required this.themeData,
  }) : super(key: key);
  final String text;
  final String label;
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: themeData.textTheme.bodyText2,
        ),
        Text(
          text,
          style: themeData.textTheme.headline1,
        ),
      ],
    );
  }
}
