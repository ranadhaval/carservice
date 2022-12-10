import 'package:car_service_app/utils/constant.dart';
import 'package:car_service_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widget/custom_appbabr2.dart';

class PaymentsMethodScreen extends StatefulWidget {
  const PaymentsMethodScreen({super.key});

  @override
  State<PaymentsMethodScreen> createState() => _PaymentsMethodScreenState();
}

class _PaymentsMethodScreenState extends State<PaymentsMethodScreen> {
  final List paymentList = [
    {'name': 'PayPal', 'img': 'assets/images/image 27.png'},
    {'name': 'Google Pay', 'img': 'assets/images/image 26.png'},
    {'name': 'Apple Pay', 'img': 'assets/images/image 25.png'},
    {'name': '**** **** **** 4679', 'img': 'assets/images/image 24.png'},
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar2(title: 'Payment')),
      body: Column(
        children: [
          addVerticalSpace(20),
          Expanded(
              child: ListView.builder(
                  itemCount: paymentList.length,
                  itemBuilder: (ctx, i) {
                    return Container(
                      margin: EdgeInsets.all(8),
                      height: height(context) * 0.1,
                      width: width(context) * 0.95,
                      decoration: shadowDecoration(10, 4),
                      child: Center(
                        child: ListTile(
                          leading: Image.asset(paymentList[i]['img']),
                          title: Text(
                            paymentList[i]['name'],
                            style: bodyText14w600(color: black),
                          ),
                          trailing: Icon(
                            selectedIndex == i
                                ? Icons.check_circle
                                : Icons.circle_outlined,
                            size: 30,
                            color: primary,
                          ),
                          onTap: () {
                            selectedIndex = i;
                            setState(() {});
                          },
                        ),
                      ),
                    );
                  })),
          CustomButton(name: 'Add New Card', onPressed: () {}),
          addVerticalSpace(20)
        ],
      ),
    );
  }
}
