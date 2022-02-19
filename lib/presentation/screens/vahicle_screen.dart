import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/presentation/widgets/rounder_icon_button.dart';
import 'package:my_garage/utils/dimensions.dart';

class VehicleScreen extends StatelessWidget {
  final Car car;
  const VehicleScreen({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sidePadding = EdgeInsets.symmetric(horizontal: 25);

    return Scaffold(
      body: Container(
        height: Dimensions.screenHeight,
        width: Dimensions.screenWidth,
        child: Column(
          children: [
            Container(
              height: Dimensions.screenHeight/3,
              child: Stack(
                children: [
                  car.imageUrl.isNotEmpty
                      ? Image.file(
                          File(car.imageUrl),
                          fit: BoxFit.cover,
                          width: double.infinity,
                        )
                      : Container(
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
            Padding(
              padding: sidePadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'test',
                      ),
                      Text('test'),
                    ],
                  ),
                  BorderBox(
                    height: 50,
                    child: Text(
                      '20 Hours ago',
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: sidePadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'test',
                      ),
                      Text('test'),
                    ],
                  ),
                  BorderBox(
                    height: 50,
                    child: Text(
                      '20 Hours ago',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BorderBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final double? width;
  final double? height;

  const BorderBox({Key? key, this.padding, this.width, this.height, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.white.withAlpha(40),
          width: 2,
        ),
      ),
      // If padding is null then default padding is 8
      padding: padding ?? EdgeInsets.all(8),
      child: Center(
        child: child,
      ),
    );
  }
}

// IconButton(
//             icon: const Icon(Icons.delete),
//             tooltip: 'Delete Vehicle',
//             onPressed: (){
//               context.read<GarageBloc>().add(RemoveCarFromGarage(car));
//               Navigator.of(context).pop();
//             },
//           ),
