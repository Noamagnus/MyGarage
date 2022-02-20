import 'package:flutter/material.dart';
import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/business_logic/imagePicker/bloc/imagepicker_bloc.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/presentation/screens/garage_screen.dart';
import 'package:my_garage/utils/colors.dart';
import 'package:my_garage/utils/dimensions.dart';
import 'package:my_garage/utils/widget_functions.dart';
import 'package:provider/src/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

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
  // final node1 = FocusNode();
  // final node2 = FocusNode();
  // final node3 = FocusNode();

  DateTime? year;

  bool isRegistered = true;

  @override
  void initState() {
    super.initState();
    carBrandTextController.addListener(() => setState(() {}));
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
            padding: const EdgeInsets.only(
              left: 6,
              right: 6,
              bottom: 4,
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
              onChanged: (value) {},
            ),
          ),
          addVerticalSpace(10),
          //! Licence number text field

          Container(
            color: AppColors.listTileBackgroundColor,
            padding: const EdgeInsets.only(
              left: 6,
              right: 6,
              bottom: 4,
            ),
            child: TextFormField(
              controller: licenceNumberTextController,
              maxLength: 10,
              // keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Licence Number',
                border: InputBorder.none,
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
            padding: const EdgeInsets.only(
              left: 6,
              right: 6,
            ),
            child: TextFormField(
              maxLines: 5,
              controller: descriptionTextController,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                labelText: 'Description',
                border: InputBorder.none,
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
          addVerticalSpace(10),
          //DatePicker button
          SizedBox(
            height: 40,
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
                  year = date!;
                });
              }),
              child: const Text(
                'Registration Expired Date',
                style: TextStyle(color: AppColors.textTitleColor),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
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
                icon: const Icon(Icons.camera),
              ),
              IconButton(
                onPressed: () {
                  context.read<ImagepickerBloc>().add(const PickFromGallery());
                },
                icon: const Icon(Icons.image),
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
            initial: () => const SizedBox(
              height: 30,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 40,
                width: 80,
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
                    style: TextStyle(color: AppColors.textTitleColor),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: 80,
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
                    style: TextStyle(color: AppColors.textTitleColor),
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

Future<dynamic> customShowDialog(String message, BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Back'),
        )
      ],
    ),
  );
}
