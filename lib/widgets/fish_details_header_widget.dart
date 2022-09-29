import 'package:flutter/material.dart';
import 'package:lns_aquarium/models/fish_model.dart';
import 'package:lns_aquarium/resources/app_colors.dart';
import 'package:lns_aquarium/widgets/fish_icon_widget.dart';

class FishDetailsHeaderWidget extends StatelessWidget {
  const FishDetailsHeaderWidget({
    Key? key,
    required this.fish,
  }) : super(key: key);

  final Fish fish;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.5,
      child: Stack(
        children: <Widget>[
          _FishDetailTopImage(fishId: fish.id),
          _FishDetailIcon(fishId: fish.id),
          const Positioned(
            top: 36.0,
            left: 10.0,
            child: BackButton(color: AppColors.kBackgroundColor),
          )
        ],
      ),
    );
  }
}

class _FishDetailTopImage extends StatelessWidget {
  const _FishDetailTopImage({
    Key? key,
    required this.fishId,
  }) : super(key: key);

  final int fishId;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -40.0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(MediaQuery.of(context).size.width / 2),
          bottomRight: Radius.circular(MediaQuery.of(context).size.width / 2),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height / 2.5,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('http://acnhapi.com/v1/images/fish/$fishId'),
              fit: BoxFit.cover,
            ),
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}

class _FishDetailIcon extends StatelessWidget {
  const _FishDetailIcon({
    Key? key,
    required this.fishId,
  }) : super(key: key);

  final int fishId;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FishIconWidget(fishId: fishId),
    );
  }
}
