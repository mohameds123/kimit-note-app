import 'package:flutter/material.dart';

import '../../core/const/txt.dart';
import '../../core/theme/colors_manager.dart';

class TextFormFeildWidget extends StatefulWidget {
  String hintTxt;
  TextEditingController controller;
  TextFormFeildWidget({super.key,required this.controller,required this.hintTxt});

  @override
  State<TextFormFeildWidget> createState() => _TextFormFeildWidgetState();
}

class _TextFormFeildWidgetState extends State<TextFormFeildWidget> {
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: TextFormField(
        controller: widget.controller,
        style: TextStyle(color: ColorsManager.white),
        decoration: InputDecoration(
          fillColor: ColorsManager.txtFeildColor,
          filled: true,
          border: InputBorder.none,
          hintText: widget.hintTxt,
        ),
      ),
    );
  }
}
