import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_garage/business_logic/garage/bloc/garage_bloc.dart';
import 'package:my_garage/business_logic/imagePicker/bloc/imagepicker_bloc.dart';
import 'package:my_garage/data/dataproviders/sembast.dart';
import 'package:my_garage/data/repositories/ImagePickerService.dart';
import 'package:my_garage/data/repositories/GarageService.dart';
import 'package:my_garage/presentation/screens/splash_screen.dart';
import 'package:my_garage/utils/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(
  //   SystemUiMode.immersiveSticky,
  // );

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
      child: ScreenUtilInit(
        designSize: const Size(360,640),
        builder: ()=>
         MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
          primaryColor: AppColors.blueColor,
          textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
          
        ),
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
