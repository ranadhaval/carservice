import 'package:car_service_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widget/custom_appbabr2.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  final List notificationList = [
    {
      'title': 'Payment Successful!',
      'subtitle': 'Payment Successful!',
      'isIcon': false
    },
    {
      'title': 'Top Up E-Wallet Successful!',
      'subtitle': 'You have to top-up your e-wallet',
      'isIcon': false
    },
    {
      'title': 'Taxi Booked!',
      'subtitle': 'You have booked a taxi',
      'isIcon': true
    },
    {
      'title': 'Your ride is completed',
      'subtitle': 'Your ride is successfully completed',
      'isIcon': true
    },
    {
      'title': 'Payment Successful!',
      'subtitle': 'Payment Successful!',
      'isIcon': false
    },
    {
      'title': 'Top Up E-Wallet Successful!',
      'subtitle': 'You have to top-up your e-wallet',
      'isIcon': false
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar2(
            title: 'Notification',
          )),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: notificationList.length,
                  itemBuilder: (ctx, i) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: i == 0
                              ? Text(
                                  'Todaya',
                                  style: bodyText16w600(color: black),
                                )
                              : i == 2
                                  ? Text(
                                      'Yesterday',
                                      style: bodyText16w600(color: black),
                                    )
                                  : SizedBox(),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          height: height(context) * 0.1,
                          width: width(context) * 0.95,
                          decoration: shadowDecoration(10, 1),
                          child: Center(
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: myFillBoxDecoration(0, primary, 30),
                                child: Center(
                                    child: Icon(
                                  notificationList[i]['isIcon'] == false
                                      ? Icons.wallet
                                      : Icons.car_rental,
                                  // size: 20,
                                  color: white,
                                )),
                              ),
                              title: Text(
                                notificationList[i]['title'],
                                style: bodyText16w600(color: black),
                              ),
                              subtitle: Text(
                                notificationList[i]['subtitle'],
                                style: bodyText12Small(
                                    color: black.withOpacity(0.5)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }))
        ],
      ),
    );
  }
}
