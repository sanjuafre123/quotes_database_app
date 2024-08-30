import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pr_7_db_miner/view/home_screen/home_screen.dart';
import 'package:pr_7_db_miner/view/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const SplashScreen(),
        ),
        GetPage(name: '/home', page: () => HomeScreen()),
      ],
    );
  }
}
