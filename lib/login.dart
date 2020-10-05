import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_login/signup.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                  Text("Welcome",
                      style: TextStyle(
                          color: kPrimaryDarkColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                  Text("back!",
                      style: TextStyle(
                          color: kPrimaryDarkColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Color(0xFF00D99E),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 80,
                                offset: Offset(0, 15),
                                color: Color(0xFF808080).withOpacity(0.5),
                                spreadRadius: -9)
                          ]),
                      child: FlatButton.icon(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/icons/facebook.svg",
                          height: 15,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            EdgeInsets.symmetric(vertical: 17, horizontal: 40),
                        label: Text(
                          "Continue with Facebook",
                          style: TextStyle(
                              color: kPrimaryDarkColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Color(0xFF00D99E),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 80,
                                offset: Offset(0, 15),
                                color: Color(0xFF808080).withOpacity(0.5),
                                spreadRadius: -9)
                          ]),
                      child: FlatButton.icon(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/icons/linkedin.svg",
                          height: 15,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            EdgeInsets.symmetric(vertical: 17, horizontal: 40),
                        label: Text(
                          "Continue with Linked In",
                          style: TextStyle(
                              color: kPrimaryDarkColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Color(0xFF00D99E),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 80,
                                offset: Offset(0, 15),
                                color: Color(0xFF808080).withOpacity(0.5),
                                spreadRadius: -9)
                          ]),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                  builder: (context) => SignUpScreen()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            EdgeInsets.symmetric(vertical: 17, horizontal: 40),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        color: kPrimaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Do you have an account?",
                            style: TextStyle(color: kPrimaryDarkColor)),
                        TextSpan(
                            text: " Sign In",
                            style: TextStyle(
                                color: kPrimaryDarkColor,
                                fontWeight: FontWeight.bold))
                      ]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: size.width * 0.8,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        padding:
                            EdgeInsets.symmetric(vertical: 17, horizontal: 12),
                        onPressed: () {},
                        child: Text(
                          "Register Later",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              decoration: TextDecoration.underline),
                        ),
                        color: kPrimaryLightColor,
                      ),
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
