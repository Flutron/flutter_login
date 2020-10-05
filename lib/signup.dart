import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPhoneEnabled = true;

  void _toggle(bool isPhoneEnabled) {
    setState(() {
      this.isPhoneEnabled = isPhoneEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.check,
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.07, vertical: size.height * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: kPrimaryColor,
                    radius: 25,
                    child: CircleAvatar(
                      foregroundColor: kPrimaryColor,
                      backgroundColor: Colors.white,
                      radius: 22,
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: SvgPicture.asset("assets/icons/tie.svg")),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Jobit",
                    style: TextStyle(
                        color: kPrimaryDarkColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sign Up",
                      style: TextStyle(
                          color: kPrimaryDarkColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.37,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            padding: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 40),
                            onPressed: () {
                              _toggle(true);
                            },
                            child: Text(
                              "Phone",
                              style: TextStyle(
                                  color: this.isPhoneEnabled
                                      ? Colors.white
                                      : kPrimaryDarkColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            color: this.isPhoneEnabled
                                ? kPrimaryColor
                                : kPrimaryLightColor,
                          ),
                        ),
                        Container(
                          width: size.width * 0.37,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            padding: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 40),
                            onPressed: () {
                              _toggle(false);
                            },
                            child: Text(
                              "Email",
                              style: TextStyle(
                                  color: this.isPhoneEnabled
                                      ? kPrimaryDarkColor
                                      : Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            color: this.isPhoneEnabled
                                ? kPrimaryLightColor
                                : kPrimaryColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(fontSize: 14),
                          suffixIcon: Icon(Icons.edit)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Surname",
                          hintStyle: TextStyle(fontSize: 14),
                          suffixIcon: Icon(Icons.edit)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    isPhoneEnabled
                        ? IntlPhoneField(
                            showDropdownIcon: false,
                            decoration: InputDecoration(
                                hintText: "Phone Number",
                                hintStyle: TextStyle(fontSize: 14)),
                            onChanged: (value) {},
                          )
                        : TextField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(fontSize: 14),
                                suffixIcon: Icon(Icons.edit)),
                          ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Theme(
                          data: ThemeData(unselectedWidgetColor: kPrimaryColor),
                          child: Checkbox(
                            onChanged: (value) {},
                            value: false,
                            checkColor: kPrimaryColor,
                          ),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "I have read the ",
                                style: TextStyle(
                                    color: kPrimaryDarkColor, fontSize: 11)),
                            TextSpan(
                                text: "user aggrement",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    decoration: TextDecoration.underline,
                                    fontSize: 11)),
                            TextSpan(
                                text: " and I accept it",
                                style: TextStyle(
                                    color: kPrimaryDarkColor, fontSize: 11))
                          ]),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
