import 'package:flutter/material.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';

import 'package:parmanu_flutter/screens/home_screen.dart';
import 'package:parmanu_flutter/screens/profile_screen.dart';
import 'package:parmanu_flutter/screens/resource_screen.dart';
import 'package:parmanu_flutter/screens/setting_screen.dart';
import 'package:parmanu_flutter/screens/help_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _index = 0;

  late List<CollapsibleItem> _listItems;

  @override
  initState() {
    super.initState();
    _listItems = _generateItem;
  }

  List<CollapsibleItem> get _generateItem {
    return [
      CollapsibleItem(
          text: 'Home',
          icon: Icons.home_outlined,
          onPressed: () => setState(() => _index = 0),
          isSelected: true),
      CollapsibleItem(
          text: 'Resources',
          icon: Icons.rocket_launch_outlined,
          onPressed: () => setState(() => _index = 1)),
      CollapsibleItem(
          text: 'Profiles',
          icon: Icons.person_outlined,
          onPressed: () => setState(() => _index = 2)),
      CollapsibleItem(
          text: 'Help',
          icon: Icons.help_outline,
          onPressed: () => setState(() => _index = 3)),
      CollapsibleItem(
          text: 'Settings',
          icon: Icons.settings_outlined,
          onPressed: () => setState(() => _index = 4)),
    ];
  }

  final List<Widget> _listScreens = [
    const HomeScreen(),
    const ResourceScreen(),
    const ProfileScreen(),
    const HelpScreen(),
    const SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Assets/background.jpg',),
                    fit: BoxFit.cover
                )
            ),
            child: CollapsibleSidebar(
                avatarImg: const AssetImage('Assets/parmanu.jpg'),
                title: 'Parmanu',
                backgroundColor: Colors.black,
                selectedTextColor: Colors.blueAccent,
                textStyle: const TextStyle(fontSize: 16),
                items: _listItems,
                body: _listScreens[_index]),
          )),
    );
  }
}
