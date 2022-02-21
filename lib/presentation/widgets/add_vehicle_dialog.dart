import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/business_logic/imagePicker/bloc/imagepicker_bloc.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/presentation/screens/garage_screen.dart';
import 'package:my_garage/presentation/widgets/text_widgets.dart';
import 'package:my_garage/utils/colors.dart';
import 'package:my_garage/utils/widget_functions.dart';
// ignore: implementation_imports
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

  DateTime year = DateTime.now();

  bool isServiced = true;

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
          CustomTextFormField(
            descriptionTextController: carBrandTextController,
            maxLines: 1,
            maxLength: 20,
            labelText: 'Brand',
            validator: (value) {
              if (value != null && value.isEmpty) {
                return ('Please enter vehicle brand');
              } else {
                return null;
              }
            },
          ),
          addVerticalSpace(10.h),
          // Licence number text field
          CustomTextFormField(
            descriptionTextController: licenceNumberTextController,
            maxLength: 10,
            labelText: 'Licence number',
            validator: (value) {
              if (value != null && value.isEmpty) {
                return ('Please enter vehicle LicenceNumber');
              } else {
                return null;
              }
            },
          ),
          addVerticalSpace(10),
          // Description text field
          CustomTextFormField(
            descriptionTextController: descriptionTextController,
            labelText: 'Description',
            maxLines: 5,
            validator: (value) {
              if (value != null && value.isEmpty) {
                return ('Please enter vehicle description');
              } else {
                return null;
              }
            },
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
                  if (date != null) {
                    year = date;
                  }
                });
              }),
              child: const Text(
                'Registration Expire Date',
                style: TextStyle(color: AppColors.textTitleColor),
              ),
            ),
          ),
          addVerticalSpace(20.h),
          //Is serviced switch
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isServiced
                  ? const EasyText(
                      'Serviced',
                      color: AppColors.grey600,
                    )
                  : const EasyText(
                      'Not Serviced',
                      color: AppColors.grey600,
                    ),
              Switch(
                onChanged: (value) {
                  setState(() {
                    isServiced = value;
                  });
                },
                value: isServiced,
              )
            ],
          ),
          // Image picker buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const EasyText(
                'Vehicle photo',
                color: AppColors.grey600,
              ),
              IconButton(
                onPressed: () {
                  context.read<ImagepickerBloc>().add(const TakePicture());
                },
                icon: const Icon(
                  Icons.camera,
                  color: AppColors.blueColor,
                ),
              ),
              IconButton(
                onPressed: () {
                  context.read<ImagepickerBloc>().add(const PickFromGallery());
                },
                icon: const Icon(
                  Icons.image,
                  color: AppColors.blueColor,
                ),
              ),
            ],
          ),
          // Image preview
          imageUrl.when(
            fulfilled: (imageUrl) {
              return imageUrl != null
                  ? ImagePreview(
                      path: imageUrl,
                    )
                  : const SizedBox.shrink();
            },
            initial: () => SizedBox(
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
                      if (_checkOtherFields(year, imageUrl, isServiced, context)) {
                        final car = Car(
                          brand: carBrandTextController.text,
                          description: descriptionTextController.text,
                          isServiced: isServiced,
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
                    style: TextStyle(
                      color: AppColors.grey600,
                      fontWeight: FontWeight.w700,
                    ),
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
                    style: TextStyle(
                      color: AppColors.grey600,
                      fontWeight: FontWeight.w700,
                    ),
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

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.labelText,
    Key? key,
    required this.descriptionTextController,
    this.validator,
    this.maxLength,
    this.maxLines,
  }) : super(key: key);
  final String labelText;
  final TextEditingController descriptionTextController;
  final String? Function(String?)? validator;
  final int? maxLength;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.listTileBackgroundColor,
        borderRadius: BorderRadius.circular(4.r),
      ),
      padding: EdgeInsets.only(
        left: 6.w,
        right: 6.h,
      ),
      child: TextFormField(
        maxLength: maxLength,
        maxLines: maxLines,
        controller: descriptionTextController,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          labelText: labelText,
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
        validator: validator,
      ),
    );
  }
}

bool _checkOtherFields(DateTime? year, String? imageUrl, bool isServiced, BuildContext context) {
  if (year == null) {
    customShowDialog('Registration Expiry Date is required', context);
    return false;
  } else if (imageUrl == null || imageUrl.isEmpty) {
    customShowDialog('Vehicle image is required', context);
    return false;
  }
  return true;
}
