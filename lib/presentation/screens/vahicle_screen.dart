import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/data/models/car_model.dart';

class VehicleScreen extends StatelessWidget {
  final Car car;
  const VehicleScreen({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garage Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            tooltip: 'Delete Vehicle',
            onPressed: (){
              context.read<GarageBloc>().add(RemoveCarFromGarage(car));
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${car.brand}'),
          Text('${car.type}'),
          Text('${car.color}'),
          Text('${car.licenceNumber}'),
          Text('${car.year}'),
          Text('${car.isRegistered}'),
          const SizedBox(
            height: 50,
          ),
          
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}


