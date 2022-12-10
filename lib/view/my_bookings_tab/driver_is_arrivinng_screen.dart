import 'package:car_service_app/view/my_bookings_tab/calling_screen.dart';
import 'package:car_service_app/view/my_bookings_tab/chat_screen.dart';
import 'package:car_service_app/view/my_bookings_tab/driver_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/constant.dart';
import '../../widget/custom_textfield.dart';

class DriverIsArrivingScreen extends StatelessWidget {
  const DriverIsArrivingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height(context) * 1,
                  width: width(context),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                          'assets/images/map1.png',
                        )),
                  ),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            height: 50,
                            width: 50,
                            decoration: myFillBoxDecoration(0, primary, 50),
                            child: const Icon(Icons.arrow_back),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: -15,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: height(context) * 0.35,
                width: width(context),
                decoration: shadowDecoration(32, 4),
                child: Column(children: [
                  Container(
                    height: 7,
                    width: width(context) * 0.1,
                    decoration:
                        myFillBoxDecoration(0, black.withOpacity(0.3), 10),
                  ),
                  addVerticalSpace(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Driver is Arriving',
                        style: bodyText18w600(color: black),
                      ),
                      Text(
                        '2.9 km',
                        style: bodyText14w600(color: black),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  InkWell(
                    onTap: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => DriverDetailScreen()));
                    }),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    child: Image.asset(
                                        "assets/images/booking.png"),
                                  ),
                                  addHorizontalySpace(15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Daniel Austin',
                                        style: bodyText16w600(color: black),
                                      ),
                                      Text(
                                        'Suzuki Ciaz E-Cl',
                                        style: bodyText13normal(
                                            color: black.withOpacity(0.5)),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
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
                                      Text(
                                        'HSW 4736 XK',
                                        style: bodyText14w600(color: black),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpace(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: myFillBoxDecoration(
                              0, primary.withOpacity(0.3), 50),
                          child: const Icon(
                            Icons.close,
                            size: 40,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => ChatScreen()));
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => CallingScreen()));
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
                ]),
              ))
        ],
      ),
    );
  }
}
