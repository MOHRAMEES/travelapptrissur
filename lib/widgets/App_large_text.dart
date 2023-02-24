import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Applargetext extends StatelessWidget {
  double size;
  final Color color;
  final String text;
  Applargetext({super.key, this.color=Colors.black, this.size=30, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize:size,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
