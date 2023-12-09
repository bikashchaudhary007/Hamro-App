import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hamroapp/src/features/authentication/controllers/SplashScreenController.dart';
import 'package:hamroapp/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:hamroapp/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamro App',
      theme: cAppTheme.lightTheme,
      darkTheme: cAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: SplashScreen(),
    );
  }
}
