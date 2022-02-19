import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/business_logic/imagePicker/bloc/imagepicker_bloc.dart';
import 'package:my_garage/data/repositories/GarageService.dart';
import 'package:my_garage/data/dataproviders/sembast.dart';
import 'package:my_garage/data/repositories/ImagePickerService.dart';
import 'package:my_garage/presentation/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersiveSticky,
  );

  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider(
        create: (context) => SembastDatabase(),
      ),
      RepositoryProvider(
        create: (context) => GarageService(
          RepositoryProvider.of<SembastDatabase>(context),
        ),
      ),
      RepositoryProvider(
        create: (context) => ImagePickerService(),
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
            ImagePickerService(),
          )..add(const GarageEvent.loadCarsList()),
        ),
        BlocProvider(
          create: (context) => ImagepickerBloc(RepositoryProvider.of<ImagePickerService>(context)),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
