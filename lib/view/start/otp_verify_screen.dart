import 'package:car_service_app/utils/constant.dart';
import 'package:car_service_app/widget/custom_button.dart';
import 'package:car_service_app/widget/my_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widget/custom_appbar.dart';

class OtpVerifyScreen extends StatelessWidget {
  OtpVerifyScreen({super.key});

  TextEditingController digit1 = TextEditingController();
  TextEditingController digit2 = TextEditingController();
  TextEditingController digit3 = TextEditingController();
  TextEditingController digit4 = TextEditingController();
  TextEditingController digit5 = TextEditingController();
  TextEditingController digit6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: CustomAppBar(title: '')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: height(context) * 0.33,
                child: Image.asset('assets/images/otp.png'),
              ),
            ),
            Text(
              'Verification ',
              style: TextStyle(
                  fontSize: 28, color: black, fontWeight: FontWeight.w600),
            ),
            addVerticalSpace(10),
            Text(
              'We have sent to your registerd to your mobile number',
              style: bodyText14w600(color: black),
              textAlign: TextAlign.center,
            ),
            addVerticalSpace(25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '+91 95425 78945',
                  style: bodyText16w600(color: black),
                ),
                addHorizontalySpace(10),
                GestureDetector(
                  onTap: () {},
                  child: const CircleAvatar(
                      radius: 15,
                      child: Icon(
                        Icons.edit_rounded,
                        size: 20,
                      )),
                )
              ],
            ),
            addVerticalSpace(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: height(context) * 0.055,
                  width: width(context) * 0.13,
                  // decoration: myOutlineBoxDecoration(0, Colors.black38, 8),
                  child: Center(
                    child: TextEditorForPhoneVerify(digit1),
                  ),
                ),
                SizedBox(
                  height: height(context) * 0.055,
                  width: width(context) * 0.13,
                  // decoration: myOutlineBoxDecoration(0, Colors.black38, 8),
                  child: Center(
                    child: TextEditorForPhoneVerify(digit2),
                  ),
                ),
                SizedBox(
                  height: height(context) * 0.055,
                  width: width(context) * 0.13,
                  // decoration: myOutlineBoxDecoration(0, Colors.black38, 8),
                  child: Center(
                    child: TextEditorForPhoneVerify(digit3),
                  ),
                ),
                SizedBox(
                  height: height(context) * 0.055,
                  width: width(context) * 0.13,
                  // decoration: myOutlineBoxDecoration(0, Colors.black38, 8),
                  child: Center(
                    child: TextEditorForPhoneVerify(digit4),
                  ),
                ),
                SizedBox(
                  height: height(context) * 0.055,
                  width: width(context) * 0.13,
                  // decoration: myOutlineBoxDecoration(0, Colors.black38, 8),
                  child: Center(
                    child: TextEditorForPhoneVerify(digit5),
                  ),
                ),
                SizedBox(
                  height: height(context) * 0.055,
                  width: width(context) * 0.13,
                  // decoration: myOutlineBoxDecoration(0, Colors.black38, 8),
                  child: Center(
                    child: TextEditorForPhoneVerify(digit6),
                  ),
                ),
              ],
            ),
            addVerticalSpace(height(context) * 0.04),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Didn't receive an OTP? ",
                  style: bodyText14w600(color: black)),
              TextSpan(
                  text: "Resent OTP", style: bodyText14w600(color: primary))
            ])),
            addVerticalSpace(height(context) * 0.1),
            CustomButton(
                name: 'Verify',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => MyNavigationBar()));
                })
          ],
        ),
      ),
    );
  }
}

class TextEditorForPhoneVerify extends StatelessWidget {
  final TextEditingController controller;

  TextEditorForPhoneVerify(this.controller);
  final focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        autofocus: true,
        // cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: primary)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: black.withOpacity(0.05)),
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.zero,
          fillColor: black.withOpacity(0.05),
          filled: true,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ));
  }
}
