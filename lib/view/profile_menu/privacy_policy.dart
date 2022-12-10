import 'package:car_service_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widget/custom_appbabr2.dart';

class PrivacyPolicy extends StatelessWidget {
  PrivacyPolicy({super.key});

  final List privacyPolicy = [
    '1. Types of Data We Collect',
    '2.  Use of Your Personal Data',
    '3. Disclosure of your Personal Data'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: CustomAppbar2(
              title: 'Privacy Policy',
            )),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Expanded(
                  // height: height(context),
                  child: ListView.builder(
                      itemCount: privacyPolicy.length,
                      itemBuilder: (ctx, i) {
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                privacyPolicy[i],
                                style: bodyText16w600(color: black),
                              ),
                              addVerticalSpace(15),
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                style: bodyText12Small(
                                    color: black.withOpacity(0.5)),
                              ),
                              addVerticalSpace(25)
                            ]);
                      })),
            ],
          ),
        ));
  }
}
