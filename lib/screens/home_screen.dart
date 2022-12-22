import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      child: BlurryContainer(
        color: Colors.white.withOpacity(0.15),
        child: const Center(
          child: Text('HOME SCREEN'),
        ),
      ),
    );
  }
}
