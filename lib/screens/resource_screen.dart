import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class ResourceScreen extends StatefulWidget {
  const ResourceScreen({Key? key}) : super(key: key);

  @override
  State<ResourceScreen> createState() => _ResourceScreenState();
}

class _ResourceScreenState extends State<ResourceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      child: BlurryContainer(
        color: Colors.white.withOpacity(0.15),
        child: const Center(
          child: Text('RESOURCE SCREEN'),
        ),
      ),
    );
  }
}
