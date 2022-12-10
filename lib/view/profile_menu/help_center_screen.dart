import 'package:car_service_app/utils/constant.dart';
import 'package:car_service_app/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widget/custom_appbabr2.dart';

class HelpCenterScreen extends StatefulWidget {
  HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  final TextEditingController _controller = TextEditingController();

  final List helpList = [
    'What is this app for?',
    'How to use?',
    'How do I cancel a taxi booking?',
    'Is this free to use?',
    'How to add promo on taxi?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar2(
            title: 'Help Center',
          )),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'FAQ',
              style: bodyText16w600(color: black),
            ),
            addVerticalSpace(15),
            CustomTextField(controller: _controller, hinttext: 'Search'),
            addVerticalSpace(20),
            Expanded(
                child: ListView.builder(
                    itemCount: helpList.length,
                    itemBuilder: (ctx, i) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: width(context) * 0.95,
                        decoration: shadowDecoration(10, 5),
                        child: ExpansionTile(
                            title: Text(
                              helpList[i],
                              style: bodyText16w600(color: black),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8),
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                  style: bodyText12Small(
                                      color: black.withOpacity(0.6)),
                                ),
                              )
                            ]),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
