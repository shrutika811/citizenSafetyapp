import 'package:flutter/material.dart';
import 'package:telephony/telephony.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String sms = "";
  Telephony telephony = Telephony.instance;

  void getPermission() async {
    await telephony.requestSmsPermissions;
  }

  @override
  void initState() {
    getPermission();
    telephony.listenIncomingSms(
      onNewMessage: (SmsMessage message) {
        print(message.address); //+977981******67, sender nubmer
        print(message.body); //sms text
        print(message.date); //1659690242000, timestamp
        setState(() {
          sms = message.body.toString();
        });
      },
      listenInBackground: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Listen Incoming SMS in Flutter"),
            backgroundColor: Colors.redAccent),
        body: Container(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recieved SMS Text:",
                  style: TextStyle(fontSize: 30),
                ),
                Divider(),
                Text(
                  "SMS Text:" + sms,
                  style: TextStyle(fontSize: 20),
                )
              ],
            )));
  }
}
