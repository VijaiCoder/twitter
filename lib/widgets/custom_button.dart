import 'package:flutter/material.dart';
import 'package:twitter_clone/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color btnClr;
  final GestureTapCallback onTap;
  const CustomButton(
      {Key? key,
      required this.text,
      this.color = textClr,
      this.btnClr = twitterbtnClr,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: btnClr),
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: color, fontSize: 20),
            ),
          )),
    );
  }
}
