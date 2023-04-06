import 'package:flutter/material.dart';
import 'package:youtube/youtube_thumbnail.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';

class Guidelines extends StatefulWidget {
  Guidelines();

  @override
  GuidelinesState createState() => GuidelinesState();
}

class GuidelinesState extends State<Guidelines> {
  final url = "https://www.youtube.com/watch?v=C_asue70Xl8";

  Future<void>? _launched;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(3.0),
            margin: EdgeInsets.all(5.0),
            child: InkWell(
              onTap: () => setState(() {
                hoverColor:
                Colors.red[200];
                _launched = _launchInBrowser(url);
              }), // Image tapped
              splashColor: Colors.white10, // Splash color over image
              child: Container(
                  width: 330,
                  height: 200,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 1),
                          blurRadius: 2.0,
                          spreadRadius: 2.0)
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://www.freepnglogos.com/uploads/youtube-logo-hd-8.png",
                          fit: BoxFit.cover,
                          width: 400,
                          height: 220,
                        ),
                      ),

                      /*  Ink.image(
                fit: BoxFit.cover, // Fixes border issues
                width: 400,
                height: 220,
                image: NetworkImage(
                    // YoutubeThumbnail(youtubeId: 'C_asue70Xl8/0').standard()),
                    "https://img.youtube.com/vi/C_asue70Xl8/0.jpg"),
              ),*/
                      Opacity(
                          opacity: 0.35,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                                "https://img.youtube.com/vi/C_asue70Xl8/0.jpg",
                                width: 400,
                                height: 220,
                                fit: BoxFit.cover,
                                color: Color.fromARGB(255, 124, 123, 123)
                                    .withOpacity(1.0),
                                colorBlendMode: BlendMode.modulate),
                          ))
                    ],
                  )),
            ),
          ),
          SizedBox(height: 5.0),
          Container(
              alignment: AlignmentDirectional.topStart,
              padding: EdgeInsets.all(3.0),
              margin: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.check_box,
                        color: Color.fromARGB(255, 231, 129, 11),
                      ),
                      SizedBox(width: 5.0),
                      Text("CYBER SECURITY DO’S :",
                          style: TextStyle(
                            /* shadows: [
                                Shadow(
                                  blurRadius: 10.0, // shadow blur
                                  color: Color.fromARGB(
                                      255, 161, 238, 146), // shadow color
                                  offset: Offset(2.0,
                                      2.0), // how much shadow will be shown
                                ),
                              ],*/
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 231, 129, 11),
                          )),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 2, 2, 2),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "1)",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text:
                                    " Use complex passwords with a minimum length of 8 characters, using a combination of capital letters, small letters, numbers and special characters.",
                                style: TextStyle(
                                  inherit: false,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                )),
                          ])),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 2, 2, 2),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "2)",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text:
                                    " Change your passwords at least once in 45 days.",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                )),
                          ])),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 2, 2, 2),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "3)",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text:
                                    " Use multi-factor authentication, wherever available.",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                )),
                          ])),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.0),
                  Row(
                    children: [
                      Icon(
                        Icons.close,
                        color: Color.fromARGB(255, 231, 129, 11),
                      ),
                      SizedBox(width: 5.0),
                      Text("CYBER SECURITY DONT’S :",
                          style: TextStyle(
                            /*  shadows: [
                              Shadow(
                                blurRadius: 10.0, // shadow blur
                                color: Color.fromARGB(
                                    255, 238, 172, 146), // shadow color
                                offset: Offset(
                                    2.0, 2.0), // how much shadow will be shown
                              ),
                            ],*/
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 231, 129, 11),
                          )),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 2, 2, 2),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "1)",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text:
                                    " Don’t use the same password in multiple services/websites/apps",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                )),
                          ])),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 2, 2, 2),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "2)",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text:
                                    " Don’t save your passwords in the browser or in any unprotected documents.",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                )),
                          ])),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 2, 2, 2),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "3)",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text:
                                    " Don’t use any 3rd party anonymization services (ex: Nord VPN, Express VPN,Tor, Proxies, etc.).",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                )),
                          ])),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ]),
      ),
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (!await launch(
      url,
      forceSafariVC: true,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }
}
