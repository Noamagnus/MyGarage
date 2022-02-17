import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/data/repositories/GarageService.dart';
import 'package:my_garage/data/repositories/sembast.dart';
import 'package:my_garage/presentation/screens/splash_screen.dart';

void main() {
  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider(
        create: (context) => SembastDatabase(),
      ),
      RepositoryProvider(
        create: (context) => GarageService(RepositoryProvider.of<SembastDatabase>(context)),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
       
        BlocProvider(
          create: (_) => GarageBloc(
            GarageService(
              RepositoryProvider.of<SembastDatabase>(context),
            ),
          )..add(const GarageEvent.loadCarsList()),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

//  BlocProvider(
//         create: (_) => CounterBloc()..add(const CounterEvent.started()),
//       ),
//       BlocProvider(
//         create: (_) => GarageBloc(GarageService())..add(const GarageEvent.started()),
//       )