import 'package:flutter/material.dart';
import 'package:kimitnoteappliction/core/theme/colors_manager.dart';

class Button extends StatelessWidget {
  final String txt;
  const Button({super.key, required this.txt});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 312,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          txt,
          style: TextStyle(
            color: ColorsManager.primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}