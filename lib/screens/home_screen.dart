import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: Implement your listing screen.
    return Scaffold(
      appBar: AppBar(title: const Text('LNS Aquarium')),
      body: const Center(
        child: Text(
          'Nothing to do here.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
