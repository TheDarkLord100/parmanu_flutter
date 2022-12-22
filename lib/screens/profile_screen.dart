import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      child: BlurryContainer(
        color: Colors.white.withOpacity(0.15),
        child: const Center(
          child: Text('PROFILE SCREEN'),
        ),
      ),
    );
  }
}
