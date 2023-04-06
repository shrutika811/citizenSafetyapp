import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(Icons.person, color: Colors.white),
      ),

      // ),
      // Padding(
      //   padding: const EdgeInsets.only(right: 15),
      // ),
      title: Text(
        "Welcome!",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      // Padding(
      //   padding: const EdgeInsets.only(right: 70),
      // ),
      // CircleAvatar(
      //   backgroundColor: Colors.white24,
      //   child: Icon(Icons.arrow_back_ios, color: Colors.white),
      // ),
      //   ],
      // ),
    );
  }
}
