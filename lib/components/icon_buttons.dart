import 'package:every_interface/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final String image;

  const SocialButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    this.image = kApple,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 58.0,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 16.0),
              blurRadius: 60.0,
              spreadRadius: 0.0,
              color: Color.fromRGBO(134, 109, 201, 0.16),
            ),
          ]),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(24.0),
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image, height: 20.0, width: 20.0),
              SizedBox(width: 10.0),
              Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
