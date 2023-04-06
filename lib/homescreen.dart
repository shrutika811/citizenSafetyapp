import 'package:citizensafety2_0/body.dart';
import 'package:citizensafety2_0/side_menu.dart';
import 'package:citizensafety2_0/constants.dart';

import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu_open_outlined),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SideMenu()));
        },
      ),
    );
  }
}
