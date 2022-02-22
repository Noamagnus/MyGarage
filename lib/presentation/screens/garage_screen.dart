import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/presentation/screens/vehicle_screen.dart';
import 'package:my_garage/presentation/widgets/add_vehicle_dialog.dart';
import 'package:my_garage/presentation/widgets/list_tile.dart';
import 'package:my_garage/presentation/widgets/rounder_icon_button.dart';
import 'package:my_garage/presentation/widgets/text_widgets.dart';
import 'package:my_garage/utils/colors.dart';
import 'package:my_garage/utils/dimensions.dart';
import 'package:my_garage/utils/widget_functions.dart';

class GarageScreen extends StatelessWidget {
  const GarageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GarageBloc>().state;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBackgroundColor,
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return orientation == Orientation.portrait
                ? SizedBox(
                    height: Dimensions.screenHeight,
                    width: Dimensions.screenWidth,
                    child: Column(
                      children: [
                        addVerticalSpace(10),
                        const CustomAppBar(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: const Divider(
                            color: AppColors.blueColor,
                          ),
                        ),
                        GarageBodyWidget(
                          state: state,
                          listTileContainerHeight: Dimensions.screenWidth / 2.8,
                        )
                      ],
                    ),
                  )
                : SizedBox(
                    height: Dimensions.screenWidth,
                    width: Dimensions.screenHeight,
                    child: Column(
                      children: [
                        addVerticalSpace(10),
                        const CustomAppBar(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: const Divider(
                            color: AppColors.blueColor,
                          ),
                        ),
                        GarageBodyWidget(
                          state: state,
                          listTileContainerHeight: Dimensions.screenHeight / 2.8,
                        )
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            addHorizontalSpace(10.w),
            Icon(
              Icons.garage,
              size: 40.sp,
              color: AppColors.blueColor,
            ),
            addHorizontalSpace(10.w),
            EasyText(
              'Garage',
              fontSize: 24.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.textTitleColor,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            right: 15.w,
            bottom: 5.h,
          ),
          child: RoundedIconButton(
            icon: Icons.add,
            size: 30.sp,
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: AppColors.screenBackgroundColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
                  ),
                  builder: (BuildContext context) {
                    return FractionallySizedBox(
                      heightFactor: 0.9,
                      child: AddVehicleDialog(),
                    );
                  });
            },
          ),
        )
      ],
    );
  }
}

class GarageBodyWidget extends StatelessWidget {
  const GarageBodyWidget({
    Key? key,
    required this.state,
    required this.listTileContainerHeight,
  }) : super(key: key);
  final GarageState state;
  final double listTileContainerHeight;
  @override
  Widget build(BuildContext context) {
    return state.when(
      initial: () => const Expanded(child: Center(child: Text('Please add some vehicle'))),
      garageLoadingState: () => const Center(child: CircularProgressIndicator()),
      garageLoadedState: (listOfCars) {
        return Expanded(
          child: ListView.builder(
            itemCount: listOfCars.length,
            itemBuilder: (BuildContext context, int index) {
              final car = listOfCars[index];
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => VehicleScreen(
                        car: car,
                      ),
                    ),
                  );
                },
                child: CustomListTile(
                  brand: car.brand,
                  description: car.description,
                  licenceNumber: car.licenceNumber,
                  path: car.imageUrl,
                  year: car.year,
                  isServiced: car.isServiced,
                  listTileContainerHeight: listTileContainerHeight,
                ),
              );
            },
          ),
        );
      },
      garageErrorState: (String error) => Text(
        error.toString(),
      ),
    );
  }
}

class ImagePreview extends StatelessWidget {
  const ImagePreview({Key? key, required this.path}) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.w,
        horizontal: 8.h,
      ),
      child: SizedBox(
        height: 150.h,
        width: double.infinity,
        child: Image.file(
          File(path),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}
