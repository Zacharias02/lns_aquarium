import 'package:flutter/material.dart';
import 'package:lns_aquarium/models/fish_model.dart';
import 'package:lns_aquarium/resources/app_colors.dart';

class FishDetailsScreen extends StatelessWidget {
  const FishDetailsScreen({
    Key? key,
    required this.fish,
  }) : super(key: key);

  final Fish fish;

  @override
  Widget build(BuildContext context) {
    // TODO: Implement your details screen.
    return const Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: Center(
        child: Text(
          'Nothing to do here.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
