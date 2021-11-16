// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_ui/components/text_field.dart';
import 'package:login_ui/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final ValueChanged<String>? onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(Icons.person, color: kPrimaryColor),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
