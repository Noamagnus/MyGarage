import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_garage/data/dataproviders/sembast.dart';
import 'package:my_garage/presentation/screens/garage_screen.dart';
import 'package:my_garage/presentation/widgets/text_widgets.dart';
import 'package:my_garage/utils/colors.dart';
import 'package:my_garage/utils/widget_functions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initSembastDatabase();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => const GarageScreen(),
    ));
  }

  void _initSembastDatabase() async {
    await RepositoryProvider.of<SembastDatabase>(context).init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: SizedBox(),
            ),
            const Icon(
              Icons.garage,
              size: 120,
              color: AppColors.blueColor,
              // color: AppColors.grey800,
            ),
            const EasyText(
              'My Garage',
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: AppColors.grey800,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: const LinearProgressIndicator(),
            ),
            // const Expanded(
            //   child: SizedBox(),
            // ),
            Padding(
              padding:  EdgeInsets.only(bottom: 10,right: 10,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const EasyText(
                    'Milos Ivackovic',
                    color: AppColors.grey600,
                  ),
                  addHorizontalSpace(5),
                  const EasyText(
                    '2022.',
                    color: AppColors.grey600,
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
