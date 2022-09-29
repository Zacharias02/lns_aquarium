import 'package:flutter/material.dart';
import 'package:lns_aquarium/models/fish_model.dart';
import 'package:lns_aquarium/resources/app_colors.dart';
import 'package:lns_aquarium/widgets/fish_availability_widget.dart';
import 'package:lns_aquarium/widgets/fish_details_header_widget.dart';
import 'package:lns_aquarium/widgets/fish_details_location_widget.dart';
import 'package:lns_aquarium/widgets/fish_details_phrases_widget.dart';
import 'package:lns_aquarium/widgets/fish_details_title_widget.dart';

class FishDetailsScreen extends StatelessWidget {
  const FishDetailsScreen({
    Key? key,
    required this.fish,
  }) : super(key: key);

  final Fish fish;

  final LinearGradient linearGradient = const LinearGradient(
    begin: FractionalOffset.topCenter,
    end: FractionalOffset.bottomCenter,
    colors: <Color>[
      AppColors.kPrimarySubtleColor,
      AppColors.kBackgroundColor,
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(gradient: linearGradient),
          child: Column(
            children: <Widget>[
              FishDetailsHeaderWidget(fish: fish),
              FishDetailsTitleWidget(
                title: fish.name,
                rarity: fish.rarity,
              ),
              FishDetailsAvailabilityWidget(fish: fish),
              FishDetailsPriceLocationWidget(
                price: fish.price,
                location: fish.location,
              ),
              FishDetailsPhrasesWidget(
                catchPhrases: fish.catchPhrase,
                museumPhrases: fish.museumPhrase,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
