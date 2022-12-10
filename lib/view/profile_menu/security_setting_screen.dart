import 'package:car_service_app/utils/constant.dart';
import 'package:car_service_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widget/custom_appbabr2.dart';

class SecuritySettingScreen extends StatefulWidget {
  const SecuritySettingScreen({super.key});

  @override
  State<SecuritySettingScreen> createState() => _SecuritySettingScreenState();
}

class _SecuritySettingScreenState extends State<SecuritySettingScreen> {
  bool isSwitch = true;
  bool isSwitch1 = true;
  bool isSwitch2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar2(
            title: 'Security',
          )),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Remember me',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch,
                    onChanged: (val) {
                      isSwitch = val;
                      setState(() {});
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Face ID',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch2,
                    onChanged: (val) {
                      isSwitch2 = val;
                      setState(() {});
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Biometric ID',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch1,
                    onChanged: (val) {
                      isSwitch1 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(height(context) * 0.08),
            CustomButton(name: 'Change PIN', onPressed: () {}),
            addVerticalSpace(20),
            CustomButton(name: 'Change Password', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
