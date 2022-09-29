import 'package:flutter/material.dart';

class FishIconWidget extends StatelessWidget {
  const FishIconWidget({
    Key? key,
    required this.fishId,
  }) : super(key: key);

  final int fishId;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: fishId,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Image.network('http://acnhapi.com/v1/icons/fish/$fishId'),
      ),
    );
  }
}
