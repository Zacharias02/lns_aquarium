import 'package:flutter/material.dart';

class FishDetailsPriceLocationWidget extends StatelessWidget {
  const FishDetailsPriceLocationWidget({
    Key? key,
    required this.price,
    required this.location,
  }) : super(key: key);

  final int price;

  final String location;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Card(
            margin: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              child: Center(
                child: Text(
                  location,
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            margin: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              child: Center(
                child: Text(
                  '$price Bells',
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
