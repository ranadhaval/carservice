import 'package:car_service_app/utils/constant.dart';
import 'package:flutter/material.dart';


import '../../widget/custom_appbabr2.dart';

enum SelectLanguage { one, two, three, four, five, six, seven }

class LanguageSelectScreen extends StatefulWidget {
  const LanguageSelectScreen({super.key});

  @override
  State<LanguageSelectScreen> createState() => _LanguageSelectScreenState();
}

class _LanguageSelectScreenState extends State<LanguageSelectScreen> {
  SelectLanguage _value = SelectLanguage.one;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar2(
            title: 'Language',
          )),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Suggested',
              style: bodyText16w600(color: black),
            ),
            addVerticalSpace(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English (US)',
                  style: bodyText16normal(color: black),
                ),
                Radio(
                    value: SelectLanguage.one,
                    activeColor: primary,
                    groupValue: _value,
                    onChanged: (val) {
                      _value = val!;
                      setState(() {});
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English (UK)',
                  style: bodyText16normal(color: black),
                ),
                Radio(
                    value: SelectLanguage.two,
                    activeColor: primary,
                    groupValue: _value,
                    onChanged: (val) {
                      _value = val!;
                      setState(() {});
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mandarin',
                  style: bodyText16normal(color: black),
                ),
                Radio(
                    value: SelectLanguage.three,
                    activeColor: primary,
                    groupValue: _value,
                    onChanged: (val) {
                      _value = val!;
                      setState(() {});
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hindi',
                  style: bodyText16normal(color: black),
                ),
                Radio(
                    value: SelectLanguage.four,
                    activeColor: primary,
                    groupValue: _value,
                    onChanged: (val) {
                      _value = val!;
                      setState(() {});
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Spanish',
                  style: bodyText16normal(color: black),
                ),
                Radio(
                    value: SelectLanguage.five,
                    activeColor: primary,
                    groupValue: _value,
                    onChanged: (val) {
                      _value = val!;
                      setState(() {});
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'French',
                  style: bodyText16normal(color: black),
                ),
                Radio(
                    value: SelectLanguage.six,
                    activeColor: primary,
                    groupValue: _value,
                    onChanged: (val) {
                      _value = val!;
                      setState(() {});
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Arebic',
                  style: bodyText16normal(color: black),
                ),
                Radio(
                    value: SelectLanguage.seven,
                    activeColor: primary,
                    groupValue: _value,
                    onChanged: (val) {
                      _value = val!;
                      setState(() {});
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
