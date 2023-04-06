import 'package:citizensafety2_0/report_form.dart';
import 'package:flutter/material.dart';

class fraudSubmit extends StatelessWidget {
  Widget _fraudSubmitted() {
    return Material();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Color.fromARGB(255, 246, 243, 243)),
          onPressed: () {
            Navigator.pop(context);
          },
          // onPressed: () => Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => ()),
          //     )
        ),
        backgroundColor: Color.fromARGB(255, 48, 51, 51),
      ),
      body: //SingleChildScrollView(
          //     child: Container(
          //   margin: EdgeInsets.all(24),
          //   child: Form(
          //       child: Padding(
          //     padding: const EdgeInsets.all(8),
          //     child: Column(

          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: <Widget>[uniqueId(), ],
          //     ),
          //   )),
          // )),
          Center(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          width: 350,
          height: 400,
          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          color: Colors.white70,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 70.0),
              child: Text(
                "Report\nSubmitted✅",
                style: TextStyle(color: Color(0xff023047), fontSize: 35),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
