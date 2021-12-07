import 'dart:ui';
import 'package:every_interface/components/icon_buttons.dart';
import 'package:every_interface/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:every_interface/components/rounded_button.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextStyle defaultStyle = TextStyle(
    color: kTextColor,
    fontSize: 15.0,
  );
  TextStyle linkStyle = TextStyle(color: kPrimaryColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign in',
                style: TextStyle(
                    color: Color(0xff2C2929),
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              SocialButton(
                text: 'Sign in with Apple',
                press: () {},
                color: Colors.white,
                textColor: Color(0xffCCCCCC),
                image: kApple,
              ),
              SizedBox(
                height: 16,
              ),
              SocialButton(
                text: 'Sign in with Google',
                press: () {},
                color: Colors.white,
                textColor: Color(0xff4285F4),
                image: kGoogle,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Or get a linked emailed to you',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    hintText: "Work Email Address",
                    hintStyle: TextStyle(
                      fontSize: 20,
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              RoundedButton(
                text: 'Email me a signup  link',
                press: () {},
                color: kPrimaryColor,
                textColor: Colors.white,
              ),
              SizedBox(
                height: 70,
              ),
              Divider(
                color: Color(0XFF2C2929),
              ),
              SizedBox(
                height: 55,
              ),
              RichText(
                text: TextSpan(
                  style: defaultStyle,
                  children: <TextSpan>[
                    TextSpan(text: '     You are completely safe\n'),
                    TextSpan(
                      text: 'Read our Terms & Conditions.',
                      style: linkStyle,
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
