import 'package:flutter/material.dart';
class TitleCustom extends StatelessWidget {
  final String textIsi;
  final double width;
  TitleCustom({
    super.key,
    required this.textIsi,
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: width,
     child: Text(textIsi, textScaleFactor: 1.5, style: TextStyle(
       fontWeight: FontWeight.w600
     ),),
    );
  }
}
