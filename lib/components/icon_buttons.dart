import 'package:every_interface/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final Image imagelogoapple, imagelogogoogle;

  const SocialButton({
    Key? key,
    required this.text,
    required this.press,
    this.imagelogoapple = kApple,
    this.imagelogogoogle = kGoogle,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
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
