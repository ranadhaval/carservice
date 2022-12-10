import 'package:flutter/material.dart';

import '../utils/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.name, required this.onPressed});

  final String name;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: width(context) * 0.92,
        decoration: myFillBoxDecoration(0, primary, 50),
        child: Center(
          child: Text(
            name,
            style: bodyText16w600(color: white),
          ),
        ),
      ),
    );
  }
}
