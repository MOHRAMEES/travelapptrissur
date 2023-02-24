import 'package:flutter/material.dart';
import 'package:travelapptrissur/widgets/App_text.dart';

import '../misc/colors.dart';

class Appbutton extends StatelessWidget {
  final Color color;
  final Color backgroundcolor;
  String? text;
  IconData? icon;
  double size;
  final Color bordercolor;
  bool isIcon;
  Appbutton(
      {super.key,
      required this.backgroundcolor,
      required this.color,
      required this.bordercolor,
      required this.size,
      this.icon,
      this.text = 'hi',
      this.isIcon = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: bordercolor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: backgroundcolor),
      child: isIcon == false
          ? Center(
              child: Apptext(
                text: text!,
                color: color,
              ),
            )
          : Center(
              child: Icon(
                icon,
                color: color,
              ),
            ),
    );
  }
}
