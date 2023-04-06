import 'package:citizensafety2_0/constants.dart';
import 'package:citizensafety2_0/submit.dart';
import 'package:csc_picker/csc_picker.dart';

import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ReportForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ReportFormState();
  }
}

class ReportFormState extends State<ReportForm> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _phoneNo = new TextEditingController();
  TextEditingController _type = new TextEditingController();
  String name = '';
  String email = '';
  String PhoneNum = '';
  String location = '';
  String type = '';
  String countryVal = '';
  String cityVal = '';
  String stateVal = '';
  final storage = new FlutterSecureStorage();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  Reference referenceRoot = FirebaseStorage.instance.ref();
  CollectionReference _reference =
      FirebaseFirestore.instance.collection('fraud-list');
  List fraudTypeList = [
    {"title": "1. UPI fraud", "value": "UPI"},
    {"title": "2. SMS/Phishing", "value": "SMS/Phishing"},
    {"title": "3. Fake Apps", "value": "FakeApps"},
    {"title": "4. Debit/Credit Card fraud", "value": "Debit/Credit"},
  ];
  List locationList = [
    {"title": "1. Mumbai", "value": "Mumbai"},
    {"title": "2. Satara", "value": "Satara"},
    {"title": "3. Sangli", "value": "Sangli"},
    {"title": "4. Kolhapur", "value": "Kolhapur"},
    {"title": "5. Pune", "value": "Pune"}
  ];
  String defaultValue = "";
  Widget _buildName() {
    return Material(
      elevation: 12,
      borderRadius: BorderRadius.circular(25),
      shadowColor: kShadowColor,
      child: TextFormField(
        controller: nameController,
        decoration: InputDecoration(
          labelText: 'Enter Name: ',
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24, width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
          fillColor: Colors.white70,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24, width: 2),
            borderRadius: BorderRadius.circular(23),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24, width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24, width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        validator: MultiValidator([RequiredValidator(errorText: 'Required*')]),
      ),
    );
  }

  // Widget set_location() {
  //   return CSCPicker(
  //     showStates: true,
  //     showCities: true,
  //     onCountryChanged: (country) {
  //       setState(() {
  //         countryVal = country;
  //       });
  //     },
  //     onStateChanged: (state) {},
  //     onCityChanged: (city) {},
  //     // dropdownDecoration: BoxDecoration(
  //     //     borderRadius: BorderRadius.all(Radius.circular(10)),
  //     //     color: Colors.white,
  //     //     border: Border.all(color: Colors.grey.shade300, width: 1)),
  //     // countrySearchPlaceholder: "Country",
  //     // stateSearchPlaceholder: "State",
  //     // citySearchPlaceholder: "City",
  //     // countryDropdownLabel: "*Country",
  //     // stateDropdownLabel: "*State",
  //     // cityDropdownLabel: "*City",
  //     // selectedItemStyle: TextStyle(
  //     //   color: Colors.black,
  //     //   fontSize: 14,
  //     // ),
  //     // dropdownHeadingStyle: TextStyle(
  //     //     color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
  //     // dropdownItemStyle: TextStyle(
  //     //   color: Colors.black,
  //     //   fontSize: 14,
  //     // ),
  //     // dropdownDialogRadius: 10.0,
  //     // searchBarRadius: 10.0,
  //     // onCountryChanged: (Country) {
  //     //   setState(() {
  //     //     countryVal = Country;
  //     //   });
  //     // },
  //     // onStateChanged: (State) {
  //     //   // setState(() {
  //     //   //   stateVal = state;
  //     //   // });
  //     // },
  //     // onCityChanged: (value) {
  //     //   // setState(() {
  //     //   //   ///store value in city variable
  //     //   //   cityVal = value!;
  //     //   // });
  //     // },
  //   );
  // }

  Widget _buildEmail() {
    return Material(
      elevation: 12,
      borderRadius: BorderRadius.circular(25),
      shadowColor: kShadowColor,
      child: TextFormField(
        controller: emailController,
        decoration: InputDecoration(
          labelText: 'Enter Email: ',
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24, width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
          fillColor: Colors.white70,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24, width: 2),
            borderRadius: BorderRadius.circular(23),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24, width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24, width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        validator: MultiValidator([RequiredValidator(errorText: 'Required*')]),
      ),
    );
  }

  Widget _phoneNumber() {
    return Material(
      elevation: 12,
      borderRadius: BorderRadius.circular(25),
      shadowColor: kShadowColor,
      child: TextFormField(
        controller: _phoneNo,

        decoration: InputDecoration(
          labelText: 'Phone Number: ',
          labelStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24, width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
          fillColor: Colors.white70,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24, width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24, width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24, width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onChanged: (value) {
          _formkey.currentState?.validate();
        },
        validator: (value) {
          if (value!.isEmpty) {
            return "Enter Phone Number!";
          } else if (!RegExp(
                  r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
              .hasMatch(value)) {
            return "Please Enter a valid Phone Number";
          }
        },
        // validator: MultiValidator(
        //     [RequiredValidator(errorText: 'Required Phone No.')]),
        keyboardType: TextInputType.phone,
      ),
    );
  }

  Widget set_location() {
    return CSCPicker(
      onCountryChanged: (country) {},
      onStateChanged: (state) {},
      onCityChanged: (city) {
        // setState(() {
        //   cityVal = city;
        // }
        // );
      },
    );
  }

  // Widget set_location() {
  //   return CSCPicker(
  //     onCountryChanged: (country) {},
  //     onStateChanged: (state) {},
  //     onCityChanged: (city) {},
  //     // onCountryChanged: (country) {
  //     //   setState(() {
  //     //     countryVal = country;
  //     //   });
  //     // },
  //     // onCityChanged: (city) {

  //     // },
  //     // onStateChanged: (state) {},
  //   );
  // }

  Widget _fraudType() {
    return Material(
      elevation: 12,
      borderRadius: BorderRadius.circular(25),
      shadowColor: kShadowColor,
      child: DropdownButtonFormField(
          decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.black),
            // labelText: 'Select Fraud Type: ',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white24, width: 2),
              borderRadius: BorderRadius.circular(25),
            ),
            fillColor: Colors.white70,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white24, width: 2),
              borderRadius: BorderRadius.circular(25),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white24, width: 2),
              borderRadius: BorderRadius.circular(25),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white24, width: 2),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          value: defaultValue,
          validator:
              MultiValidator([RequiredValidator(errorText: 'Required*')]),

          //isExpanded: true,
          items: [
            const DropdownMenuItem(child: Text("Type of Fraud:"), value: ""),
            ...fraudTypeList.map<DropdownMenuItem<String>>((e) {
              return DropdownMenuItem(
                  child: Text(e['title']), value: e['value']);
            }).toList(),
          ],
          onChanged: (val) {
            setState(() => type = val.toString());
          }),
    );
  }

  Widget _locationType() {
    return Material(
      elevation: 12,
      borderRadius: BorderRadius.circular(25),
      shadowColor: kShadowColor,
      child: DropdownButtonFormField(
          decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.black),
            // labelText: 'Select Location: ',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white24, width: 2),
              borderRadius: BorderRadius.circular(25),
            ),
            fillColor: Colors.white70,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white24, width: 2),
              borderRadius: BorderRadius.circular(25),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white24, width: 2),
              borderRadius: BorderRadius.circular(25),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white24, width: 2),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          value: defaultValue,
          validator:
              MultiValidator([RequiredValidator(errorText: 'Required*')]),

          //isExpanded: true,
          items: [
            const DropdownMenuItem(child: Text("Location:"), value: ""),
            ...locationList.map<DropdownMenuItem<String>>((e) {
              return DropdownMenuItem(
                  child: Text(e['title']), value: e['value']);
            }).toList(),
          ],
          onChanged: (val) {
            setState(() => location = val.toString());
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            toolbarHeight: 70,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                shadows: <Shadow>[
                  Shadow(color: Colors.black, blurRadius: 10.0),
                ],
                size: 28,
              ),
              color: Color.fromARGB(255, 255, 255, 255),
              onPressed: () {
                Navigator.of(context).pop();
              },
              // onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'Report Your Fraud',
              style: TextStyle(
                fontSize: 22,
                shadows: [
                  Shadow(
                    blurRadius: 10.0, // shadow blur
                    color: Colors.black, // shadow color
                    offset: Offset(2.0, 2.0), // how much shadow will be shown
                  ),
                ],
              ),
            ),
            centerTitle: true,
            backgroundColor: kPrimaryColor,
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Form(
                key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.all(33.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _buildName(),
                      SizedBox(height: 24),
                      _buildEmail(),
                      SizedBox(height: 24),
                      _phoneNumber(),
                      SizedBox(height: 24),
                      set_location(),
                      // _locationType(),
                      SizedBox(height: 24),
                      _fraudType(),
                      SizedBox(height: 70),
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                            onPrimary: Color.fromARGB(255, 39, 39, 39),
                            onSurface: Colors.blueGrey,
                            elevation: 5,
                            shadowColor: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 19),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22)),
                          ),
                          onPressed: () async {
                            if (_formkey.currentState!.validate()) {
                              FirebaseFirestore.instance
                                  .collection('reports')
                                  .add({
                                "Name": nameController.text,
                                "Email": emailController.text,
                                'Phone No.': _phoneNo.text,
                                'Type of fraud': type.toString(),
                                // 'Location': location.toString(),
                                'city': cityVal.toString(),
                                'country': countryVal.toString(),
                                'state': stateVal.toString()
                              }).then((value) {
                                nameController.clear();
                                emailController.clear();
                                _phoneNo.clear();

                                DateTime.now();
                              }).catchError((error) => print(error));
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => fraudSubmit()));
                            }
                            print('Pressed');
                          },
                          icon: Icon(Icons.check_box),
                          label: Text(
                            'Submit',
                            style: (TextStyle(fontSize: 20)),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
  
}
