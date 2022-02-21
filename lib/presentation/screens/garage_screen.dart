import 'dart:io';

import 'package:flutter/material.dart';
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
import 'package:provider/src/provider.dart';

// class GarageScreen extends StatelessWidget {
//   const GarageScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//     final state = context.watch<GarageBloc>().state;
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: AppColors.buttonBackgroundColor,
//         appBar: AppBar(
//           title:  EasyText(
//             'Garage Screen',
//             fontSize: 24.sp,
//             color: AppColors.textTitleColor),

//           backgroundColor: AppColors.screenBackgroundColor,
//           elevation: 0,
//           actions: [
//             Padding(
//               padding:  EdgeInsets.all(8.sp),
//               child: RoundedIconButton(
//                 icon: Icons.add,
//                 size: 40.sp,
//                 onPressed: () {
//                   showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return const AlertDialog(
//                           backgroundColor: AppColors.screenBackgroundColor,
//                           content:  SingleChildScrollView(child: AddVehicleDialog()),
//                         );
//                       });
//                 },
//               ),
//             )
//           ],
//         ),
//         body: state.when(
//           initial: () => Container(
//             child: Text('Please add some vehicle'),
//           ),
//           garageLoadingState: () => const Center(child: CircularProgressIndicator()),
//           garageLoadedState: (listOfCars) {
//             return ListView.builder(
//               itemCount: listOfCars.length,
//               itemBuilder: (BuildContext context, int index) {
//                 final car = listOfCars[index];
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) => VehicleScreen(
//                           car: car,
//                         ),
//                       ),
//                     );
//                   },
//                   child: CustomListTile(
//                     brand: car.brand,
//                     description: car.description,
//                     licenceNumber: car.licenceNumber,
//                     path: car.imageUrl,
//                     year: car.year,
//                     isRegistered: car.isRegistered,
//                   ),
//                 );
//               },
//             );
//           },
//           garageErrorState: (String error) => Text(
//             error.toString(),
//           ),
//         ),
//       ),
//     );
//   }
// }

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

class GarageScreen extends StatelessWidget {
  const GarageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GarageBloc>().state;

    return Scaffold(
      backgroundColor: AppColors.buttonBackgroundColor,
      body: Container(
        height: Dimensions.screenHeight,
        width: Dimensions.screenWidth,
        child: Column(
          children: [
            addVerticalSpace(10),
            Row(
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
                      color: Colors.blue,
                    ),
                    addHorizontalSpace(10.w),
                    EasyText('Garage', fontSize: 24.sp, color: AppColors.textTitleColor),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.w,bottom: 5.h,),
                  child: RoundedIconButton(
                    icon: Icons.add,
                    size: 30.sp,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AlertDialog(
                              backgroundColor: AppColors.screenBackgroundColor,
                              content: SingleChildScrollView(child: AddVehicleDialog()),
                            );
                          });
                    },
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: const Divider(
                color: Colors.blue,
              ),
            ),
            state.when(
              initial: () => Expanded(child: const Center(child: Text('Please add some vehicle'))),
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
                          isRegistered: car.isRegistered,
                        ),
                      );
                    },
                  ),
                );
              },
              garageErrorState: (String error) => Text(
                error.toString(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  Row(children: [
//           EasyText(
//                 'Garage Screen',
//                 fontSize: 24.sp,
//                 color: AppColors.textTitleColor),
//                 Padding(
//                   padding:  EdgeInsets.all(8.sp),
//                   child: RoundedIconButton(
//                     icon: Icons.add,
//                     size: 40.sp,
//                     onPressed: () {
//                       showDialog(
//                           context: context,
//                           builder: (BuildContext context) {
//                             return const AlertDialog(
//                               backgroundColor: AppColors.screenBackgroundColor,
//                               content:  SingleChildScrollView(child: AddVehicleDialog()),
//                             );
//                           });
//                     },
//                   ),
//                 )
//         ],),