import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/business_logic/imagePicker/bloc/imagepicker_bloc.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/presentation/screens/garage_screen.dart';
import 'package:my_garage/utils/colors.dart';
import 'package:my_garage/utils/widget_functions.dart';
import 'package:provider/src/provider.dart';
import 'package:uuid/uuid.dart';

class AddVehicleDialog extends StatefulWidget {
  const AddVehicleDialog({Key? key}) : super(key: key);

  @override
  State<AddVehicleDialog> createState() => _AddVehicleDialogState();
}

class _AddVehicleDialogState extends State<AddVehicleDialog> {
  final Uuid uuid = const Uuid();
  final descriptionTextController = TextEditingController();
  final licenceNumberTextController = TextEditingController();
  final carBrandTextController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  DateTime year=DateTime.now();

  bool isRegistered = true;

  @override
  void initState() {
    super.initState();
    carBrandTextController.addListener(() => setState(() {}));
    licenceNumberTextController.addListener(() => setState(() {}));
    descriptionTextController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final imageUrl = context.watch<ImagepickerBloc>().state;
    return Form(
      key: formKey,
      child: Column(
        children: [
          addVerticalSpace(5),
          Container(
            color: AppColors.listTileBackgroundColor,
            padding:  EdgeInsets.only(
              left: 6.w,
              right: 6.w,
              bottom: 4.h,
            ),
            //! Brand
            child: TextFormField(
              maxLines: 1,
              maxLength: 20,
              controller: carBrandTextController,
              decoration: InputDecoration(
                labelText: 'Brand',
                border: InputBorder.none,
                suffixIcon: carBrandTextController.text.isEmpty
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => carBrandTextController.clear(),
                      ),
              ),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return ('Please enter vehicle brand');
                } else {
                  return null;
                }
              },
            ),
          ),
          addVerticalSpace(10.h),
          //! Licence number text field

          Container(
            color: AppColors.listTileBackgroundColor,
            padding:  EdgeInsets.only(
              left: 6.w,
              right: 6.w,
              bottom: 4.h,
            ),
            child: TextFormField(
              controller: licenceNumberTextController,
              maxLength: 10,
              // keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Licence Number',
                border: InputBorder.none,
                suffixIcon: licenceNumberTextController.text.isEmpty
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => licenceNumberTextController.clear(),
                      ),
              ),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return ('Please enter vehicle Licence Number');
                } else {
                  return null;
                }
              },
            ),
          ),
          addVerticalSpace(10),
          //! Description text field
          Container(
            color: AppColors.listTileBackgroundColor,
            padding:  EdgeInsets.only(
              left: 6.w,
              right: 6.h,
            ),
            child: TextFormField(
              maxLines: 5,
              controller: descriptionTextController,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                labelText: 'Description',
                border: InputBorder.none,
                suffixIcon: descriptionTextController.text.isEmpty
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => descriptionTextController.clear(),
                      ),
              ),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return ('Please enter vehicle description');
                } else {
                  return null;
                }
              },
            ),
          ),
          addVerticalSpace(10.h),
          //DatePicker button
          SizedBox(
            height: 40.h,
            width: double.infinity,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: AppColors.listTileBackgroundColor,
              ),
              onPressed: () => showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2050),
              ).then((date) {
                setState(() {
                  if(date!=null){
                    year = date;
                  }
                  
                });
              }),
              child: const Text(
                'Registration Expired Date',
                style: TextStyle(color: AppColors.textTitleColor),
              ),
            ),
          ),
          addVerticalSpace(20.h),
          //Is registered switch
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isRegistered ? const Text('Registered') : const Text('Not Registered'),
              Switch(
                onChanged: (value) {
                  setState(() {
                    isRegistered = value;
                  });
                },
                value: isRegistered,
              )
            ],
          ),
          //! Image picker buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Vehicle photo'),
              IconButton(
                onPressed: () {
                  context.read<ImagepickerBloc>().add(const TakePicture());
                },
                icon: const Icon(Icons.camera,color: Colors.blue,),
              ),
              IconButton(
                onPressed: () {
                  context.read<ImagepickerBloc>().add(const PickFromGallery());
                },
                icon: const Icon(Icons.image,color: Colors.blue,),
              ),
            ],
          ),
          //! Image preview
          imageUrl.when(
            fulfilled: (imageUrl) {
              return imageUrl != null
                  ? ImagePreview(
                      path: imageUrl,
                    )
                  : const SizedBox.shrink();
            },
            initial: () =>  SizedBox(
              height: 30.h,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 40.h,
                width: 80.w,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.listTileBackgroundColor,
                  ),
                  onPressed: () {
                    final isValid = formKey.currentState!.validate();
                    if (isValid) {
                      final imageUrl = context
                          .read<ImagepickerBloc>()
                          .state
                          .when(fulfilled: (url) => url, initial: () {});
                      if (_checkOtherFields(year, imageUrl, isRegistered, context)) {
                        final car = Car(
                          brand: carBrandTextController.text,
                          description: descriptionTextController.text,
                          isRegistered: isRegistered,
                          licenceNumber: licenceNumberTextController.text,
                          type: CarType.camperVan,
                          uuid: uuid.v4(),
                          year: year,
                          imageUrl: imageUrl ?? '',
                        );
                        context.read<GarageBloc>().add(AddCarToGarage(car));
                        context.read<ImagepickerBloc>().add(const ClearPhoto());
                        Navigator.of(context).pop();
                      }
                    } else {
                      return;
                    }
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(color: AppColors.lightGrey3,fontWeight: FontWeight.w700,),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
                width: 80.w,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.listTileBackgroundColor,
                  ),
                  onPressed: () {
                    context.read<ImagepickerBloc>().add(const ClearPhoto());
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: AppColors.lightGrey3,fontWeight: FontWeight.w700,),

                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

bool _checkOtherFields(DateTime? year, String? imageUrl, bool isRegistered, BuildContext context) {
  if (year == null) {
    customShowDialog('Registration Expiry Date is required', context);
    return false;
  } else if (imageUrl == null || imageUrl.isEmpty) {
    customShowDialog('Vehicle image is required', context);
    return false;
  }
  return true;
}

