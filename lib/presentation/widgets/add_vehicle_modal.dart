import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/src/provider.dart';
import 'package:uuid/uuid.dart';

import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/business_logic/image_picker/bloc/imagepicker_bloc.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/presentation/screens/garage_screen.dart';
import 'package:my_garage/presentation/widgets/text_widgets.dart';
import 'package:my_garage/utils/colors.dart';
import 'package:my_garage/utils/dimensions.dart';
import 'package:my_garage/utils/widget_functions.dart';

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
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();

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
  void dispose() {
    super.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final imageUrl = context.watch<ImagepickerBloc>().state;
    return Padding(
      padding: EdgeInsets.all(15.sp),
      child: Container(
        height: Dimensions.screenHeight * 0.9,
        decoration: const BoxDecoration(
          color: AppColors.screenBackgroundColor,
          // borderRadius: BorderRadius.only(
          //   topLeft: const Radius.circular(15),
          //   topRight: const Radius.circular(15),
          // ),
        ),
        child: Form(
          key: formKey,
          child: SizedBox(
            height: Dimensions.screenHeight * 0.9 - 30,
            child: ListView(
              children: [
                addVerticalSpace(5),
                CustomTextFormField(
                    labelText: 'Brand',
                    focusNode: focusNode1,
                    descriptionTextController: carBrandTextController,
                    maxLines: 1,
                    maxLength: 20,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return ('Please enter vehicle brand');
                      } else {
                        return null;
                      }
                    },
                    onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(focusNode2)),
                addVerticalSpace(10.h),
                // Licence number text field
                CustomTextFormField(
                  labelText: 'Licence number',
                  focusNode: focusNode2,
                  descriptionTextController: licenceNumberTextController,
                  textInputAction: TextInputAction.next,
                  maxLines: 1,
                  maxLength: 10,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return ('Please enter vehicle LicenceNumber');
                    } else {
                      return null;
                    }
                  },
                  onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(focusNode3),
                ),

                addVerticalSpace(10),
                // Description text field
                CustomTextFormField(
                  labelText: 'Description',
                  focusNode: focusNode3,
                  descriptionTextController: descriptionTextController,
                  textInputAction: TextInputAction.next,
                  maxLines: 1,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return ('Please enter vehicle description');
                    } else {
                      return null;
                    }
                  },
                  onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                ),
                addVerticalSpace(10.h),
                //DatePicker button
                SizedBox(
                  height: 40.h,
                  width: double.infinity,
                  child: EasyTextButton(
                    buttonTitle: 'Registration Expire Date',
                    textColor: AppColors.textTitleColor,
                    backgroundColor: AppColors.listTileBackgroundColor,
                    radius: 6.r,
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
                  error: (String e) {
                    showDialog(
                      builder: (context) => AlertDialog(
                        content: Text(e.toString()),
                      ),
                      context: context,
                    );
                    return SizedBox(
                      height: 30.h,
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: Dimensions.screenWidth / 9.2,
                      width: Dimensions.screenWidth / 3,
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
                                .maybeWhen(fulfilled: (url) => url, orElse: () {});
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
                      height: Dimensions.screenWidth / 9.2,
                      width: Dimensions.screenWidth / 3,
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
                ),
                addVerticalSpace(
                  10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.labelText,
    required this.descriptionTextController,
    this.validator,
    this.maxLength,
    this.maxLines,
    this.width,
    this.height,
    this.focusNode,
    this.onSaved,
    this.onFieldSubmitted,
    this.textInputAction,
  }) : super(key: key);
  final String labelText;
  final TextEditingController descriptionTextController;
  final String? Function(String?)? validator;
  final int? maxLength;
  final int? maxLines;
  final double? width;
  final double? height;
  final FocusNode? focusNode;
  final String? Function(String?)? onSaved;
  final void Function(String?)? onFieldSubmitted;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.listTileBackgroundColor,
        borderRadius: BorderRadius.circular(6.r),
      ),
      padding: EdgeInsets.only(
        left: 6.w,
        right: 6.h,
        bottom: 2.h,
      ),
      child: TextFormField(
        onSaved: onSaved,
        onFieldSubmitted: onFieldSubmitted,
        focusNode: focusNode,
        maxLength: maxLength,
        maxLines: maxLines,
        controller: descriptionTextController,
        textInputAction: textInputAction,
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
