import 'package:flutter/material.dart';
import 'package:lns_aquarium/models/fish_model.dart';
import 'package:lns_aquarium/repositories/fishes_repository.dart';
import 'package:lns_aquarium/widgets/fish_row_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late FishesRepository repository;

  AllFish? allFish;

  Future<void> _fetchAllFish() async {
    allFish = await repository.getFishes();

    setState(() {});
  }

  @override
  void initState() {
    repository = FishesRepository();
    _fetchAllFish();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LNS Aquarium')),
      body: (allFish != null)
          ? ListView.builder(
              itemBuilder: _fishListViewBuilder,
              itemCount: allFish!.getList.length,
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _fishListViewBuilder(BuildContext context, int index) {
    Fish fish = allFish!.getList[index];
    return FishRowWidget(fish: fish);
  }
}
