import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      child: BlurryContainer(
        color: Colors.white.withOpacity(0.15),
        child: const Center(
          child: Text('HELP SCREEN'),
        ),
      ),
    );
  }
}
