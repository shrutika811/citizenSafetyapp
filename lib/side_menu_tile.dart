import 'package:citizensafety2_0/SelfAwareness.dart';
import 'package:citizensafety2_0/homescreen.dart';
import 'package:citizensafety2_0/report_form.dart';
import 'package:flutter/material.dart';

class SideMenuTile extends StatefulWidget {
  const SideMenuTile({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenuTile> createState() => _SideMenuTileState();
}

class _SideMenuTileState extends State<SideMenuTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 4),
          child: Divider(
            color: Colors.white24,
            // height: ,
          ),
        ),
        Stack(
          children: [
            // AnimatedPositioned(
            //   duration: Duration(milliseconds: 300),
            //   height: 56,
            //   width: 288,
            //   child: Container(
            //       decoration: BoxDecoration(
            //     //color: Color(0xFF6792FF),
            //     //color: _showBlue ? Colors.blue : Colors.red,
            //     borderRadius: BorderRadius.all(Radius.circular(10)),
            //   )),
            // ),
            ListTile(
              onTap: () {
                // setState(() {

                // });
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ReportForm()));
              },
              leading: SizedBox(
                height: 34,
                width: 34,
                child: Icon(
                  Icons.report_problem_outlined,
                  color: Colors.white,
                ),
              ),
              title: Text(
                "Report",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Stack(
          children: [
            // Positioned(
            //   height: 56,
            //   width: 288,
            //   child: Container(
            //       decoration: BoxDecoration(
            //     // color: Color(0xFF6792FF),
            //     // color: _showBlue ? Colors.blue : Colors.red,
            //     borderRadius: BorderRadius.all(Radius.circular(10)),
            //   )),
            // ),
            SizedBox(),
            ListTile(
              onTap: () {
                // setState(() {

                // });
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SelfAwareness()));
              },
              leading: SizedBox(
                height: 34,
                width: 34,
                child: Icon(
                  Icons.add_reaction_outlined,
                  color: Colors.white,
                ),
              ),
              title: Text(
                "Self Awareness",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
