import 'package:flutter/material.dart';

class Apptext extends StatelessWidget {
  double size;
  final Color color;
  final String text;
  Apptext({super.key, this.color=Colors.black54, this.size=16, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize:size,
      ),
    );
  }
}
