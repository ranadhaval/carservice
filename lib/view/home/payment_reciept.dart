import 'package:car_service_app/widget/custom_appbabr2.dart';
import 'package:car_service_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/constant.dart';

class PaymentRecieptScreen extends StatelessWidget {
  const PaymentRecieptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar2(title: 'E-Reciept')),
      body: Column(
        children: [
          addVerticalSpace(20),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(10),
            height: height(context) * 0.1,
            width: width(context) * 0.95,
            decoration: shadowDecoration(10, 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: white,
                      child: Image.asset("assets/images/booking.png"),
                    ),
                    addHorizontalySpace(15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Daniel Austin',
                          style: bodyText16w600(color: black),
                        ),
                        addVerticalSpace(4),
                        Text(
                          'Suzuki Ciaz E-Cl',
                          style:
                              bodyText13normal(color: black.withOpacity(0.5)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            addHorizontalySpace(10),
                            Text('4.8')
                          ],
                        ),
                        addVerticalSpace(4),
                        Text(
                          'HSW 4736 XK',
                          style: bodyText14w600(color: black),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          addVerticalSpace(15),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(12),
            height: height(context) * 0.19,
            width: width(context) * 0.95,
            decoration: shadowDecoration(10, 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Amount',
                      style: bodyText14w600(color: black.withOpacity(0.6)),
                    ),
                    Text(
                      'Rs.200',
                      style: bodyText14w600(color: black),
                    )
                  ],
                ),
                addVerticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Promo',
                      style: bodyText14w600(color: primary),
                    ),
                    Text(
                      '-Rs.50',
                      style: bodyText14w600(color: primary),
                    )
                  ],
                ),
                const Divider(
                  height: 40,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: bodyText16w600(color: black.withOpacity(0.6)),
                    ),
                    Text(
                      'Rs.150',
                      style: bodyText16w600(color: black),
                    )
                  ],
                ),
              ],
            ),
          ),
          addVerticalSpace(15),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(12),
            height: height(context) * 0.22,
            width: width(context) * 0.95,
            decoration: shadowDecoration(10, 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment Method',
                      style: bodyText14w600(color: black.withOpacity(0.6)),
                    ),
                    Text(
                      'My E-Wallet',
                      style: bodyText14w600(color: black),
                    )
                  ],
                ),
                addVerticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date',
                      style: bodyText14w600(color: black.withOpacity(0.6)),
                    ),
                    Text(
                      'Dec 20,2024 I 10:00:27 AM',
                      style: bodyText14w600(color: black),
                    )
                  ],
                ),
                addVerticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transaction ID',
                      style: bodyText14w600(color: black.withOpacity(0.6)),
                    ),
                    Text(
                      'SK7263727399',
                      style: bodyText14w600(color: black),
                    )
                  ],
                ),
                addVerticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Status',
                      style: bodyText14w600(color: primary),
                    ),
                    Text(
                      'Paid',
                      style: bodyText14w600(color: primary),
                    )
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          CustomButton(name: 'Done', onPressed: () {}),
          addVerticalSpace(20)
        ],
      ),
    );
  }
}
