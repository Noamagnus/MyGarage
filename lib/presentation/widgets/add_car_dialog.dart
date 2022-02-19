import 'package:flutter/material.dart';
import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/business_logic/imagePicker/bloc/imagepicker_bloc.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/presentation/screens/garage_screen.dart';
import 'package:provider/src/provider.dart';
import 'package:uuid/uuid.dart';

class AddCarDialog extends StatelessWidget {
  AddCarDialog({Key? key}) : super(key: key);

  final Uuid uuid = const Uuid();

  final carColor = TextEditingController();
  final licenceNumber = TextEditingController();
  final carBrand = TextEditingController();
  final year = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final imageUrl = context.watch<ImagepickerBloc>().state;
    return Column(
      children: [
        TextField(
          controller: carBrand,
          decoration: const InputDecoration(labelText: 'Brand'),
        ),
        TextField(
          controller: licenceNumber,
          // keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Licence Number'),
        ),
        TextField(
          controller: carColor,
          decoration: const InputDecoration(labelText: 'Color'),
        ),
        TextField(
          controller: year,
          keyboardType: TextInputType.datetime,
          decoration: const InputDecoration(labelText: 'Year'),
        ),
        const SizedBox(
          height: 30,
        ),
        imageUrl.when(
          fulfilled: (imageUrl) {
            return imageUrl != null
                ? ImagePreview(
                    path: imageUrl,
                  )
                : Container();
          },
          initial: () => Container(),
        ),
        TextButton(
          onPressed: () {
            context.read<ImagepickerBloc>().add(const TakePicture());
          },
          child: const Text('Take Picture'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                final imageUrl = context
                    .read<ImagepickerBloc>()
                    .state
                    .when(fulfilled: (url) => url, initial: () {});
                final car = Car(
                  brand: carBrand.text,
                  color: carColor.text,
                  isRegistered: false,
                  licenceNumber: licenceNumber.text,
                  type: CarType.camperVan,
                  uuid: uuid.v4(),
                  year: DateTime.now(),
                  imageUrl: imageUrl ?? '',
                );

                context.read<GarageBloc>().add(AddCarToGarage(car));
              },
              child: const Text('Add Car'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        )
      ],
    );
  }
}
