import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      child: BlurryContainer(
        color: Colors.white.withOpacity(0.15),
        child: const Center(
          child: Text('SETTING SCREEN'),
        ),
      ),
    );
  }
}
