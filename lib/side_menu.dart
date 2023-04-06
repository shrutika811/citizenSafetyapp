import 'package:citizensafety2_0/infocard.dart';
import 'package:citizensafety2_0/side_menu_tile.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 288,
          height: double.infinity,
          color: Color(0xFF17203A),
          child: SafeArea(
            child: Column(
              children: [
                InfoCard(),
                SideMenuTile(),
              ],
            ),
          )),
    );
  }
}
