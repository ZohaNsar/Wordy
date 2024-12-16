import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomizedTextButton extends StatelessWidget {
  final String title;
  void Function() onPressed;

  CustomizedTextButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(title),
    );
  }
}