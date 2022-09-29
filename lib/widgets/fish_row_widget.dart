import 'package:flutter/material.dart';
import 'package:lns_aquarium/models/fish_model.dart';
import 'package:lns_aquarium/screens/fish_details_screen.dart';
import 'package:lns_aquarium/widgets/fish_icon_widget.dart';

class FishRowWidget extends StatelessWidget {
  const FishRowWidget({
    Key? key,
    required this.fish,
  }) : super(key: key);

  final Fish fish;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return FishDetailsScreen(fish: fish);
            },
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey),
            top: BorderSide(
              color: Color(0xFFE0E0E0),
            ),
          ),
        ),
        child: Row(
          children: <Widget>[
            FishIconWidget(fishId: fish.id),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                height: 80.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      fish.name,
                      style: const TextStyle(fontSize: 22.0),
                    ),
                    Text(
                      '${fish.price} Bells',
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
