import 'package:flutter/material.dart';
import 'package:lns_aquarium/resources/app_colors.dart';
import 'package:lns_aquarium/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LNS Aquarium',
      theme: Theme.of(context).copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: AppColors.kPrimaryColor,
              secondary: AppColors.kSecondaryColor,
            ),
      ),
      home: const HomeScreen(),
    );
  }
}
