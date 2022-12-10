import 'package:car_service_app/utils/constant.dart';
import 'package:car_service_app/view/start/otp_verify_screen.dart';
import 'package:car_service_app/widget/custom_button.dart';
import 'package:car_service_app/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widget/custom_appbar.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController name = TextEditingController();

  final TextEditingController dateofBirth = TextEditingController();

  final TextEditingController number = TextEditingController();

  final TextEditingController eMail = TextEditingController();
  String _string = 'Gender';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(title: 'Sign up')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            addVerticalSpace(15),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: black.withOpacity(0.1),
                    child: Icon(
                      Icons.person,
                      color: white,
                      size: 50,
                    ),
                  ),
                  Positioned(
                      bottom: 1,
                      right: 0,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration:
                            myFillBoxDecoration(0, black.withOpacity(0.7), 30),
                        child: Center(
                          child: Icon(
                            Icons.edit,
                            color: white,
                            size: 15,
                          ),
                        ),
                      )),
                ],
              ),
            ),
            addVerticalSpace(height(context) * 0.07),
            CustomTextField(controller: name, hinttext: 'Full Name'),
            addVerticalSpace(20),
            CustomTextField(controller: dateofBirth, hinttext: 'Date of Birth'),
            addVerticalSpace(20),
            CustomTextField(controller: number, hinttext: 'Phone Number'),
            addVerticalSpace(20),
            CustomTextField(controller: eMail, hinttext: 'Email'),
            addVerticalSpace(20),
            Container(
              decoration: myFillBoxDecoration(1, black.withOpacity(0.1), 40),
              height: height(context) * 0.055,
              width: width(context) * 0.9,
              // color: const Color(0xffF0F0F0),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 2, right: 8),
                child: Center(
                  child: DropdownButton<String>(
                    value: _string,
                    isExpanded: true,
                    onChanged: (newValue) {
                      setState(() {
                        _string = newValue!;
                      });
                    },
                    items: ['Gender', 'Male', 'Female', 'Other']
                        .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: bodytext12Bold(color: black),
                                  ),
                                ))
                        .toList(),

                    // add extra sugar..
                    icon: const Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Icon(
                        Icons.arrow_drop_down,
                      ),
                    ),
                    iconSize: 25,
                    iconEnabledColor: primary,
                    iconDisabledColor: black.withOpacity(0.7),
                    underline: const SizedBox(),
                  ),
                ),
              ),
            ),
            addVerticalSpace(height(context) * 0.15),
            CustomButton(
                name: 'Sign up',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => OtpVerifyScreen()));
                })
          ],
        ),
      ),
    );
  }
}
