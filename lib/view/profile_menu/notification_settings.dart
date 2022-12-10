import 'package:car_service_app/utils/constant.dart';
import 'package:flutter/material.dart';


import '../../widget/custom_appbabr2.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
  bool isSwitch1 = true;
  bool isSwitch2 = true;
  bool isSwitch3 = true;
  bool isSwitch4 = false;
  bool isSwitch5 = true;
  bool isSwitch6 = true;
  bool isSwitch7 = false;
  bool isSwitch8 = true;
  bool isSwitch9 = true;
  bool isSwitch10 = false;
  bool isSwitch11 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar2(title: 'Notification Settings')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'General Notification',
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
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sound',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch3,
                    onChanged: (val) {
                      isSwitch3 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Vibrate',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch4,
                    onChanged: (val) {
                      isSwitch4 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Promo & Discount',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch5,
                    onChanged: (val) {
                      isSwitch5 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payments',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch6,
                    onChanged: (val) {
                      isSwitch6 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cashback',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch7,
                    onChanged: (val) {
                      isSwitch7 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'App Updates',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch8,
                    onChanged: (val) {
                      isSwitch8 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Service Available',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch9,
                    onChanged: (val) {
                      isSwitch9 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Tips Available',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch10,
                    onChanged: (val) {
                      isSwitch10 = val;
                      setState(() {});
                    })
              ],
            ),
            addVerticalSpace(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Special Offers',
                  style: bodyText16normal(color: black),
                ),
                Switch(
                    activeColor: primary,
                    value: isSwitch11,
                    onChanged: (val) {
                      isSwitch11 = val;
                      setState(() {});
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
