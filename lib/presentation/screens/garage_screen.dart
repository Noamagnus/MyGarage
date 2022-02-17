import 'package:flutter/material.dart';
import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/data/models/car_model.dart';
import 'package:my_garage/presentation/screens/vahicle_screen.dart';
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
                child: ListTile(
                  title: Text('${car.brand}   ${car.year}'),
                  subtitle: Text(car.licenceNumber.toString()),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      context.read<GarageBloc>().add(RemoveCarFromGarage(car));
                    },
                  ),
                ),
              );
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

class AddCarDialog extends StatelessWidget {
  AddCarDialog({Key? key}) : super(key: key);

  final Uuid uuid = const Uuid();

  final carColor = TextEditingController();
  final licenceNumber = TextEditingController();
  final carBrand = TextEditingController();
  final year = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                context.read<GarageBloc>().add(AddCarToGarage(
                      Car(
                        brand: carBrand.text,
                        color: carColor.text,
                        isRegistered: false,
                        licenceNumber: licenceNumber.text,
                        type: CarType.camperVan,
                        uuid: uuid.v4(),
                        year: DateTime.now(),
                      ),
                    ));
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
