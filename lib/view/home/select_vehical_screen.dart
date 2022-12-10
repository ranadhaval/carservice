import 'package:car_service_app/view/home/location_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/constant.dart';

enum SelectVehical { bike, cab, auto }

class SelectVehicalScreen extends StatefulWidget {
  const SelectVehicalScreen({super.key});

  @override
  State<SelectVehicalScreen> createState() => _SelectVehicalScreenState();
}

class _SelectVehicalScreenState extends State<SelectVehicalScreen> {
  final List switchList = [
    {
      'img': 'assets/images/switch2.png',
      'name': 'Travel',
    },
    {
      'img': 'assets/images/switch1.png',
      'name': 'Transport',
    },
  ];
  int currentIndex = 0;
  SelectVehical _value = SelectVehical.bike;
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
                            margin: EdgeInsets.all(10),
                            height: 50,
                            width: 50,
                            decoration: myFillBoxDecoration(0, primary, 50),
                            child: Icon(Icons.arrow_back),
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
              bottom: 0,
              child: Container(
                height: height(context) * 0.6,
                width: width(context),
                decoration: shadowDecoration(32, 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addVerticalSpace(20),
                    Center(
                      child: Container(
                          height: height(context) * 0.07,
                          width: width(context) * 0.7,
                          decoration: myFillBoxDecoration(0, primary, 40),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: switchList.length,
                              itemBuilder: (Ctx, i) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        currentIndex = i;
                                        setState(() {});
                                      },
                                      child: Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        height: height(context) * 0.06,
                                        width: width(context) * 0.32,
                                        decoration: currentIndex == i
                                            ? myFillBoxDecoration(0, white, 40)
                                            : BoxDecoration(),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                  height: 30,
                                                  child: Image.asset(
                                                      switchList[i]['img'])),
                                              addHorizontalySpace(7),
                                              Text(
                                                switchList[i]['name'],
                                                style: bodytext12Bold(
                                                    color: currentIndex == i
                                                        ? black
                                                        : white),
                                              )
                                            ]),
                                      ),
                                    ),
                                  ],
                                );
                              })),
                    ),
                    addVerticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/images/cash.png'),
                        addHorizontalySpace(10),
                        Text('Cash'),
                        addHorizontalySpace(15),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      height: height(context) * 0.1,
                      width: width(context) * 0.95,
                      decoration: shadowDecoration(10, 2),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: primary,
                                child: Image.asset('assets/images/scooter.png'),
                              ),
                              addHorizontalySpace(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bike',
                                    style: bodyText16w600(color: black),
                                  ),
                                  Text(
                                    '7 nearbies',
                                    style: bodyText13normal(
                                        color: black.withOpacity(0.4)),
                                  )
                                ],
                              ),
                              Spacer(),
                              Text(
                                'Rs 20.00',
                                style: bodyText14w600(color: black),
                              ),
                              Radio(
                                  value: SelectVehical.bike,
                                  activeColor: primary,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value!;
                                    });
                                  })
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      height: height(context) * 0.1,
                      width: width(context) * 0.95,
                      decoration: shadowDecoration(10, 2),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: primary,
                                child: Image.asset('assets/images/car.png'),
                              ),
                              addHorizontalySpace(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hatch',
                                    style: bodyText16w600(color: black),
                                  ),
                                  Text(
                                    '7 nearbies',
                                    style: bodyText13normal(
                                        color: black.withOpacity(0.4)),
                                  )
                                ],
                              ),
                              const Spacer(),
                              Text(
                                'Rs 90.00',
                                style: bodyText14w600(color: black),
                              ),
                              Radio(
                                  value: SelectVehical.cab,
                                  activeColor: primary,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value!;
                                    });
                                  })
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      height: height(context) * 0.1,
                      width: width(context) * 0.95,
                      decoration: shadowDecoration(10, 2),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: primary,
                                child: Image.asset('assets/images/auto.png'),
                              ),
                              addHorizontalySpace(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Auto',
                                    style: bodyText16w600(color: black),
                                  ),
                                  Text(
                                    '7 nearbies',
                                    style: bodyText13normal(
                                        color: black.withOpacity(0.4)),
                                  )
                                ],
                              ),
                              Spacer(),
                              Text(
                                'Rs 50.00',
                                style: bodyText14w600(color: black),
                              ),
                              Radio(
                                  value: SelectVehical.auto,
                                  activeColor: primary,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value!;
                                    });
                                  })
                            ],
                          ),
                        ],
                      ),
                    ),
                    addVerticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => LocationDetailsScreen()));
                          },
                          child: Container(
                            height: height(context) * 0.06,
                            width: width(context) * 0.45,
                            decoration: myFillBoxDecoration(0, primary, 50),
                            child: Center(
                              child: Text(
                                'Book Now',
                                style: bodyText16w600(color: white),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (ctx) => SelectVehicalScreen()));
                          },
                          child: Container(
                            height: height(context) * 0.06,
                            width: width(context) * 0.45,
                            decoration: myOutlineBoxDecoration(2, primary, 50),
                            child: Center(
                              child: Text(
                                'Schedule',
                                style: bodyText16w600(color: primary),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
