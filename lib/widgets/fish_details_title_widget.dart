import 'package:flutter/material.dart';

class FishDetailsTitleWidget extends StatelessWidget {
  const FishDetailsTitleWidget({
    Key? key,
    required this.title,
    required this.rarity,
  }) : super(key: key);

  final String title;

  final String rarity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 28.0,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        Text(
          rarity,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
