import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_garage/data/dataproviders/sembast.dart';
import 'package:my_garage/presentation/screens/garage_screen.dart';

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
    await Future.delayed(const Duration(seconds: 2));
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
          children:  [
            const Text('Splash Screen'),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.w),
              child: const LinearProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
