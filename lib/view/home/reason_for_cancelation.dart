import 'package:car_service_app/utils/constant.dart';
import 'package:car_service_app/widget/custom_appbar.dart';
import 'package:car_service_app/widget/custom_button.dart';
import 'package:car_service_app/widget/custom_textfield.dart';
import 'package:car_service_app/widget/my_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReasonForCancellationScreen extends StatefulWidget {
  const ReasonForCancellationScreen({super.key});

  @override
  State<ReasonForCancellationScreen> createState() =>
      _ReasonForCancellationScreenState();
}

class _ReasonForCancellationScreenState
    extends State<ReasonForCancellationScreen> {
  final List checkList = [
    {'title': 'Waiting for long time', 'check': false},
    {'title': 'Unable to contact driver', 'check': false},
  ];

  final TextEditingController _controller = TextEditingController();
  bool isSelect = false;
  bool isSelect1 = false;
  bool isSelect2 = false;
  bool isSelect3 = false;
  bool isSelect4 = false;
  bool isSelect5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(title: 'Cancel taxi')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please select the reason for cancellation:',
              style: bodyText16normal(color: black),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: primary,
                    value: isSelect,
                    onChanged: (value) {
                      isSelect = value!;
                      setState(() {});
                    }),
                Text(
                  'Waiting for long time',
                  style: bodyText16normal(color: black),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: primary,
                    value: isSelect1,
                    onChanged: (value) {
                      isSelect1 = value!;
                      setState(() {});
                    }),
                Text(
                  'Driver denied to go to destination',
                  style: bodyText16normal(color: black),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: primary,
                    value: isSelect2,
                    onChanged: (value) {
                      isSelect2 = value!;
                      setState(() {});
                    }),
                Text(
                  'Unable to contact driver',
                  style: bodyText16normal(color: black),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: primary,
                    value: isSelect3,
                    onChanged: (value) {
                      isSelect3 = value!;
                      setState(() {});
                    }),
                Text(
                  'Driver denied to come to pickup',
                  style: bodyText16normal(color: black),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: primary,
                    value: isSelect4,
                    onChanged: (value) {
                      isSelect4 = value!;
                      setState(() {});
                    }),
                Text(
                  'Wrong address shown',
                  style: bodyText16normal(color: black),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: primary,
                    value: isSelect5,
                    onChanged: (value) {
                      isSelect5 = value!;
                      setState(() {});
                    }),
                Text(
                  'The price is not reasonable',
                  style: bodyText16normal(color: black),
                )
              ],
            ),
            addVerticalSpace(15),
            Text(
              'Others',
              style: bodyText16w600(color: black),
            ),
            addVerticalSpace(15),
            CustomTextField(controller: _controller, hinttext: 'Other Reason'),
            Spacer(),
            CustomButton(
                name: 'Cancel Taxi',
                onPressed: () {
                  cancelationPopup(context);
                }),
            addVerticalSpace(15)
          ],
        ),
      ),
    );
  }

  cancelationPopup(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              contentPadding: const EdgeInsets.all(6),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              content: Builder(
                builder: (context) {
                  var height = MediaQuery.of(context).size.height;
                  var width = MediaQuery.of(context).size.width;

                  return Container(
                      height: height * 0.45,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/images/image 19.png'),
                          Text(
                            'We’re so sad about your cancellation',
                            textAlign: TextAlign.center,
                            style: bodyText20w700(color: black),
                          ),
                          Text(
                            'We will continue to improve our serive & satisfy you on the next trip.',
                            textAlign: TextAlign.center,
                            style: bodyText12Small(spacing: 1.4, color: black),
                          ),
                          addVerticalSpace(height * 0.03),
                          CustomButton(
                              name: 'OK',
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (ctx) => MyNavigationBar()));
                              }),
                        ],
                      ));
                },
              ),
            ));
  }
}
