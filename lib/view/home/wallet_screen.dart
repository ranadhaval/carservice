import 'package:car_service_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widget/custom_appbabr2.dart';
import '../../widget/custom_button.dart';

class WalletScreen extends StatelessWidget {
  WalletScreen({super.key});

  final List transactionList = [
    {
      'name': 'Daniel Austin',
      'type': 'Taxi Expense',
      'bool': false,
    },
    {
      'name': 'Daniel Austin',
      'type': 'Taxi Expense',
      'bool': false,
    },
    {
      'name': 'Top Up Wallet',
      'type': 'Top up',
      'bool': true,
    },
    {
      'name': 'Daniel Austin',
      'type': 'Taxi Expense',
      'bool': false,
    },
    {
      'name': 'Top Up Wallet',
      'type': 'Top up',
      'bool': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar2(title: 'Wallet')),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left: 30, right: 15),
            height: height(context) * 0.18,
            width: width(context) * 0.95,
            decoration: myFillBoxDecoration(0, primary, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Balance',
                          style: bodyText16w600(color: white),
                        ),
                        Text(
                          'Rs 1.234',
                          style: bodyText30W600(color: white),
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => TopupEWalletScreen()));
                      },
                      child: Container(
                        height: 45,
                        width: width(context) * 0.33,
                        decoration: myFillBoxDecoration(0, white, 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.account_balance_wallet),
                            Text(
                              'Top Up',
                              style: bodyText16w600(color: black),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment Details',
                  style: bodyText22w700(color: black),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: bodyText14normal(color: primary),
                    ))
              ],
            ),
          ),
          Expanded(
            // height: height(context) * 0.8,
            child: ListView.builder(
                itemCount: transactionList.length,
                itemBuilder: (ctx, i) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundColor: primary,
                          child: transactionList[i]['bool'] == true
                              ? Icon(
                                  Icons.account_balance_wallet,
                                  color: white,
                                )
                              : Image.asset('assets/images/user1.png'),
                        ),
                        title: Text(
                          transactionList[i]['name'],
                          style: bodyText16w600(color: black),
                        ),
                        subtitle: Text(
                          'Dec 20, 20224 I 10:00 AM',
                          overflow: TextOverflow.ellipsis,
                          style: bodyText12Small(color: black),
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "\$12",
                              style: bodyText16normal(color: black),
                            ),
                            addVerticalSpace(5),
                            Text(
                              transactionList[i]['type'],
                              style: bodyText12Small(color: black),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 5,
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class TopupEWalletScreen extends StatefulWidget {
  const TopupEWalletScreen({super.key});

  @override
  State<TopupEWalletScreen> createState() => _TopupEWalletScreenState();
}

class _TopupEWalletScreenState extends State<TopupEWalletScreen> {
  List lookingForList = [
    'Rs 10',
    'Rs 100',
    'Rs 300',
    'Rs 400',
    'Rs 500',
    'Rs 600',
    'Rs 700',
    'Rs 800',
    'Rs 900',
  ];

  List<bool> listBool = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  int select = 0;
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar2(title: 'Top Up E-Wallet')),
      body: Column(
        children: [
          addVerticalSpace(30),
          Center(
              child: Text("Enter the amount of top up",
                  style: bodyText14w600(color: black.withOpacity(0.5)))),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            height: height(context) * 0.13,
            width: width(context),
            decoration: myOutlineBoxDecoration(2, primary, 20),
            child: Center(
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: lookingForList[select],
                    hintStyle: bodyText30W600(color: black)),
              ),
            ),
          ),
          Wrap(
              spacing: 10,
              runSpacing: 8,
              children: List.generate(lookingForList.length, (index) {
                return GestureDetector(
                    onTap: () {
                      setState(() {
                        listBool[index] = !listBool[select];
                        isTrue = !isTrue;
                        select = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      padding: const EdgeInsets.all(5),
                      width: width(context) * 0.28,
                      decoration: select == index
                          ? myFillBoxDecoration(0, primary, 20)
                          : BoxDecoration(
                              border: Border.all(color: primary, width: 2),
                              borderRadius: BorderRadius.circular(20)),
                      child: SizedBox(
                        height: height(context) * 0.03,
                        width: width(context) * 0.19,
                        child: Center(
                          child: Text(
                            lookingForList[index],
                            textAlign: TextAlign.center,
                            style: bodyText14w600(
                                color: select == index ? white : Colors.black),
                          ),
                        ),
                      ),
                    ));
              })),
          SizedBox(
            height: height(context) * 0.1,
          ),
          CustomButton(
              name: 'Continue',
              onPressed: () {
                topUpSuccessful(context);
              })
        ],
      ),
    );
  }

  topUpSuccessful(BuildContext context) {
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
                          Image.asset('assets/images/topup.png'),
                          Text(
                            'Top Up Successful!',
                            style: bodyText20w700(color: black),
                          ),
                          addVerticalSpace(10),
                          Text(
                            'You have successfully top-up e-wallet for Rs.120',
                            textAlign: TextAlign.center,
                            style: bodyText12Small(spacing: 1.4, color: black),
                          ),
                          addVerticalSpace(height * 0.04),
                          CustomButton(
                              name: 'OK',
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ],
                      ));
                },
              ),
            ));
  }
}
