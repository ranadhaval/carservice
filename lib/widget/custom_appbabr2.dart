import 'package:flutter/material.dart';

import '../utils/constant.dart';

class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: white,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: black,
          )),
      title: Text(
        title,
        style: bodyText18w600(color: black),
      ),
      actions: [
        CircleAvatar(
          radius: 30,
          backgroundColor: white,
          child: Image.asset('assets/images/profile.png'),
        ),
      ],
    );
  }
}
