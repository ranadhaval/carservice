import 'package:car_service_app/utils/constant.dart';
import 'package:car_service_app/view/my_bookings_tab/calling_screen.dart';
import 'package:car_service_app/view/my_bookings_tab/chat_screen.dart';
import 'package:car_service_app/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DriverDetailScreen extends StatelessWidget {
  const DriverDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(title: 'Driver Details')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 40,
              child: Image.asset('assets/images/driver.png'),
            ),
          ),
          addVerticalSpace(5),
          Text(
            'Daniel Austin',
            style: bodyText18w600(color: black),
          ),
          Text(
            '+1-202-555-0161',
            style: bodyText14normal(color: black),
          ),
          addVerticalSpace(30),
          Container(
            height: height(context) * 0.2,
            width: width(context) * 0.93,
            decoration: shadowDecoration(10, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: myFillBoxDecoration(0, primary, 50),
                      child: Icon(
                        Icons.star,
                        size: 30,
                        color: white,
                      ),
                    ),
                    Text(
                      '4.8',
                      style: bodyText14w600(color: black),
                    ),
                    Text(
                      'Ratings',
                      style: bodyText12Small(color: black),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: myFillBoxDecoration(0, primary, 50),
                      child: Icon(
                        Icons.car_rental_outlined,
                        size: 30,
                        color: white,
                      ),
                    ),
                    Text(
                      '279',
                      style: bodyText14w600(color: black),
                    ),
                    Text(
                      'Trips',
                      style: bodyText12Small(color: black),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: myFillBoxDecoration(0, primary, 50),
                      child: Icon(
                        Icons.timer_outlined,
                        size: 30,
                        color: white,
                      ),
                    ),
                    Text(
                      '5',
                      style: bodyText14w600(color: black),
                    ),
                    Text(
                      'Years',
                      style: bodyText12Small(color: black),
                    )
                  ],
                )
              ],
            ),
          ),
          addVerticalSpace(25),
          Container(
            height: height(context) * 0.16,
            padding: EdgeInsets.all(12),
            width: width(context) * 0.93,
            decoration: shadowDecoration(10, 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Member Since',
                      style: bodyText14w600(color: black.withOpacity(0.5)),
                    ),
                    Text(
                      'July 15, 2019',
                      style: bodyText14w600(color: black),
                    )
                  ],
                ),
                addVerticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Car Model',
                      style: bodyText14w600(color: black.withOpacity(0.5)),
                    ),
                    Text(
                      'Mercedes-Benz E- Class',
                      style: bodyText14w600(color: black),
                    )
                  ],
                ),
                addVerticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Plate Number',
                      style: bodyText14w600(color: black.withOpacity(0.5)),
                    ),
                    Text(
                      'HSW 4736 XK',
                      style: bodyText14w600(color: black),
                    )
                  ],
                )
              ],
            ),
          ),
          addVerticalSpace(height(context) * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => ChatScreen()));
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: myFillBoxDecoration(0, primary, 50),
                  child: Icon(
                    Icons.message,
                    size: 40,
                    color: white,
                  ),
                ),
              ),
              addHorizontalySpace(25),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => CallingScreen()));
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: myFillBoxDecoration(0, primary, 50),
                  child: Icon(
                    Icons.call,
                    size: 40,
                    color: white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
