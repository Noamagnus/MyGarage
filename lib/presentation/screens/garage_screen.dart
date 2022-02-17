import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/business_logic/imagePicker/bloc/imagepicker_bloc.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/presentation/screens/vahicle_screen.dart';
import 'package:my_garage/presentation/widgets/add_car_dialog.dart';
import 'package:my_garage/presentation/widgets/list_tile.dart';
import 'package:provider/src/provider.dart';
import 'package:uuid/uuid.dart';

class GarageScreen extends StatelessWidget {
  const GarageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GarageBloc>().state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garage Screen'),
      ),
      body: state.when(
        initial: () => Container(),
        garageLoadingState: () => const Center(child: CircularProgressIndicator()),
        garageLoadedState: (listOfCars) {
          return ListView.builder(
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
                    color: car.color,
                    licenceNumber: car.licenceNumber,
                    path: car.imageUrl,
                    year: car.year,
                  ));
            },
          );
        },
        garageErrorState: (String error) => Text(
          error.toString(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: SingleChildScrollView(child: AddCarDialog()),
                );
              });
        },
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
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 150,
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