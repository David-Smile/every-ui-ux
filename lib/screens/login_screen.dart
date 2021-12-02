import 'package:every_interface/components/rounded_button.dart';
import 'package:every_interface/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/every.png',
                height: 200,
                width: 200,
              ),
              Text(
                "every.",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontFamily: 'poppins',
                    fontSize: 50,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 8.0),
              Text(
                "Your everyday personal assistant.",
                style: TextStyle(
                  color: kTextColor,
                  fontFamily: 'poppins',
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 108.0),
              RoundedButton(
                text: "Get Started",
                press: () {},
              ),
              SizedBox(height: 16.0),
              RoundedButton(
                text: "Login",
                press: () {},
                color: Colors.white,
                textColor: kPrimaryColor,
              ),
              SizedBox(height: 30.0),
              ClickWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class ClickWidget extends StatelessWidget {
  const ClickWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = TextStyle(
      color: kTextColor,
      fontSize: 15.0,
    );
    TextStyle linkStyle = TextStyle(color: kPrimaryColor);

    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(text: 'New around here?'),
          TextSpan(
            text: ' Sign in',
            style: linkStyle,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
