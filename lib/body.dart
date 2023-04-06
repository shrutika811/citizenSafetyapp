// import 'package:citizensafety/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.4,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.4 - 27,
                decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: ExactAssetImage('assets/images/cs2.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                  // color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
              ),
              // const SizedBox(
              //   width: double.infinity,
              //   height: 100,
              // ),
              // SafeArea(
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 20),
              //     child: Column(
              //       children: [
              //         Expanded(
              //           child: GridView.count(
              //             crossAxisCount: 2,
              //             //childAspectRatio: .85,
              //             crossAxisSpacing: 22,
              //             mainAxisSpacing: 40,
              //             children: <Widget>[
              //               InkWell(
              //                 onTap: () {
              //                   // Navigator.push(
              //                   //     context,
              //                   //     MaterialPageRoute(
              //                   //         builder: ((context) => Attendance())));
              //                 },
              //                 child: Container(
              //                     height: 0.4,
              //                     width: 0.8,
              //                     decoration: BoxDecoration(
              //                         color: Color.fromARGB(255, 2, 0, 5),
              //                         borderRadius: BorderRadius.circular(13),
              //                         boxShadow: [
              //                           BoxShadow(
              //                             color:
              //                                 Color.fromARGB(255, 61, 82, 113),
              //                             offset: Offset(2.0, 2.0),
              //                             blurRadius: 6.0,
              //                           ),
              //                         ]),
              //                     child: Column(
              //                       mainAxisAlignment: MainAxisAlignment.center,
              //                       children: [
              //                         Icon(
              //                           Icons.auto_graph,
              //                           size: 50,
              //                           // color: kTextColor,
              //                         ),
              //                         // Spacer(),
              //                         Text(
              //                           'No Phishing',
              //                           textAlign: TextAlign.center,
              //                           style: TextStyle(
              //                               color: Color.fromARGB(
              //                                   255, 255, 255, 255),
              //                               fontSize: 15),
              //                         )
              //                       ],
              //                     )),
              //               ),
              //               InkWell(
              //                 onTap: () {
              //                   // Navigator.push(
              //                   //     context,
              //                   //     MaterialPageRoute(
              //                   //         builder: ((context) => LeaveSmry())));
              //                 },
              //                 child: Container(
              //                     decoration: BoxDecoration(
              //                         color: Color.fromARGB(255, 2, 0, 5),
              //                         borderRadius: BorderRadius.circular(13),
              //                         boxShadow: [
              //                           BoxShadow(
              //                             color:
              //                                 Color.fromARGB(255, 61, 82, 113),
              //                             offset: Offset(2.0, 2.0),
              //                             blurRadius: 6.0,
              //                           ),
              //                         ]),
              //                     child: Column(
              //                       mainAxisAlignment: MainAxisAlignment.center,
              //                       children: [
              //                         Icon(
              //                           Icons.rule,
              //                           size: 50,
              //                           // color: kTextColor,
              //                         ),
              //                         //Spacer(),
              //                         Text(
              //                           ' No Smishing ',
              //                           textAlign: TextAlign.center,
              //                           style: TextStyle(
              //                               color: Color.fromARGB(
              //                                   255, 255, 255, 255),
              //                               fontSize: 15),
              //                         )
              //                       ],
              //                     )),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        )
      ],
    );
  }
}
