import 'package:flutter/material.dart';
import 'package:lns_aquarium/models/fish_model.dart';

class FishDetailsAvailabilityWidget extends StatelessWidget {
  const FishDetailsAvailabilityWidget({
    Key? key,
    required this.fish,
  }) : super(key: key);

  final Fish fish;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black26),
                ),
              ),
              child: const Center(
                child: Text(
                  'Availability',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        'Months (N)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        'Months (S)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        'Time',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(fish.getMonthAvailableNorth),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(fish.getMonthAvailableSouth),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(fish.getTimeAvailable),
                    ),
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
