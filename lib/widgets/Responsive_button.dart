import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travelapptrissur/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool isResponsive;
  double width;
  ResponsiveButton({super.key, this.isResponsive = false,  required this.width});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image(image: AssetImage('img/button-one.png'))],
        ),
      ),
    );
  }
}
