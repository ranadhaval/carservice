import 'package:car_service_app/model/emojis.dart';
import 'package:car_service_app/utils/constant.dart';
import 'package:car_service_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widget/custom_appbabr2.dart';

class PromoCodeScreen extends StatefulWidget {
  const PromoCodeScreen({super.key});

  @override
  State<PromoCodeScreen> createState() => _PromoCodeScreenState();
}

class _PromoCodeScreenState extends State<PromoCodeScreen> {
  final List promoCodeList = [
    {
      'title': 'Discount 30% Off',
      'subtitle': 'New user speical promo',
      'color': Color.fromARGB(255, 9, 68, 95)
    },
    {
      'title': 'Special 25% Off',
      'subtitle': 'Special promo only today!',
      'color': Color.fromARGB(255, 128, 200, 233)
    },
    {
      'title': 'Discount 30% Off',
      'subtitle': 'New user speical promo',
      'color': Color.fromARGB(255, 148, 12, 80)
    },
    {
      'title': 'Special 25% Off',
      'subtitle': 'Special promo only today!',
      'color': Color.fromARGB(255, 47, 184, 13)
    },
    {
      'title': 'Discount 30% Off',
      'subtitle': 'New user speical promo',
      'color': Color.fromARGB(255, 9, 68, 95)
    },
    {
      'title': 'Special 25% Off',
      'subtitle': 'Special promo only today!',
      'color': Color.fromARGB(255, 128, 200, 233)
    },
    {
      'title': 'Discount 30% Off',
      'subtitle': 'New user speical promo',
      'color': Color.fromARGB(255, 148, 12, 80)
    },
    {
      'title': 'Special 25% Off',
      'subtitle': 'Special promo only today!',
      'color': Color.fromARGB(255, 47, 184, 13)
    },
  ];

  int selectCode = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar2(title: 'Promo Code')),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: promoCodeList.length,
                      itemBuilder: (ctx, i) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          height: height(context) * 0.1,
                          width: width(context) * 0.95,
                          decoration: shadowDecoration(10, 5),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: promoCodeList[i]['color'],
                              radius: 27,
                              foregroundColor: white,
                              child: Icon(Icons.card_giftcard),
                            ),
                            title: Text(
                              promoCodeList[i]['title'],
                            ),
                            subtitle: Text(
                              promoCodeList[i]['subtitle'],
                              style: bodyText12Small(
                                  color: black.withOpacity(0.4)),
                            ),
                            trailing: Icon(
                              selectCode == i
                                  ? Icons.radio_button_checked
                                  : Icons.circle_outlined,
                              size: 30,
                              color: primary,
                            ),
                            onTap: () {
                              selectCode = i;
                              setState(() {});
                            },
                          ),
                        );
                      })),
              addVerticalSpace(height(context) * 0.08)
            ],
          ),
          Positioned(
              left: 10,
              bottom: 15,
              child: CustomButton(
                  name: 'Apply Promo',
                  onPressed: () {
                    offersDetails(context);
                  }))
        ],
      ),
    );
  }

  Future<void> offersDetails(BuildContext context) {
    return showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Container(
              padding: EdgeInsets.all(12),
              height: height(context) * 0.78,
              child: Column(
                children: [
                  Text(
                    'Special Offers',
                    style: bodyText22w700(color: black),
                  ),
                  const Divider(
                    thickness: 1,
                    height: 34,
                  ),
                  Image.asset('assets/images/offer.png'),
                  addVerticalSpace(15),
                  Text(
                    'Discount 35% Off',
                    style: bodyText20w700(color: black),
                  ),
                  addVerticalSpace(5),
                  Text('Special promo only valid for today!'),
                  addVerticalSpace(15),
                  Container(
                    height: 50,
                    width: width(context) * 0.5,
                    decoration:
                        myFillBoxDecoration(0, primary.withOpacity(0.3), 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'GH637JHAK',
                          style: bodyText20w700(color: black),
                        ),
                        Icon(
                          Icons.copy,
                          size: 30,
                          color: primary,
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    height: 40,
                  ),
                  Row(
                    children: [
                      Text(
                        'Terms and Conditions',
                        style: bodyText14w600(color: black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height(context) * 0.2,
                    child: ListView.builder(
                        itemCount: termCondition.length,
                        itemBuilder: (ctx, i) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(termCondition[i]),
                              ),
                            ],
                          );
                        }),
                  ),
                  addVerticalSpace(10),
                  CustomButton(name: 'Use Promo', onPressed: () {})
                ],
              ));
        });
      },
    );
  }
}
