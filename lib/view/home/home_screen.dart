import 'package:car_service_app/utils/constant.dart';
import 'package:car_service_app/view/home/select_vehical_screen.dart';
import 'package:car_service_app/widget/custom_textfield.dart';
import 'package:car_service_app/widget/my_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
  void initState() {
    Future.delayed(
      Duration.zero,
      () {
        setFingerPrint(context);
      },
    );
  }

  int currentIndex = 0;
  final TextEditingController searchController = TextEditingController();
  final TextEditingController searchFrom = TextEditingController();
  final TextEditingController searchDestinantion = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height(context) * 0.9,
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
              bottom: -15,
              child: Container(
                height: height(context) * 0.3,
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
                    addVerticalSpace(30),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        'Search Destination',
                        style: bodyText16w600(color: black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CustomTextField(
                        ontap: () {
                          searchAddressBottomSheet(context);
                        },
                        controller: searchController,
                        hinttext: 'Search',
                        icon: Icon(Icons.location_on),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  setFingerPrint(BuildContext context) {
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
                      height: height * 0.52,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/images/setfinger.png'),
                          Text(
                            'Set Your Fingerprint',
                            style: bodyText20w700(color: black),
                          ),
                          Text(
                            'Add a fingerprint to make your account more secure. ',
                            textAlign: TextAlign.center,
                            style: bodyText12Small(spacing: 1.4, color: black),
                          ),
                          addVerticalSpace(height * 0.04),
                          CustomButton(
                              name: 'Continue',
                              onPressed: () {
                                Navigator.pop(context);
                                setLocationDialog(context);
                              }),
                          addVerticalSpace(1),
                          InkWell(
                            onTap: () {
                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (ctx) => MyNavigationBar()));
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 50,
                              width: width * 0.92,
                              decoration: myFillBoxDecoration(
                                  0, primary.withOpacity(0.3), 50),
                              child: Center(
                                child: Text(
                                  'Skip',
                                  style: bodyText16w600(color: black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ));
                },
              ),
            ));
  }

  setLocationDialog(BuildContext context) {
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
                      height: height * 0.52,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/images/setlocation.png'),
                          Text(
                            'Enable Location',
                            style: bodyText20w700(color: black),
                          ),
                          Text(
                            'We need access to your location to be able to use this service.',
                            textAlign: TextAlign.center,
                            style: bodyText12Small(spacing: 1.4, color: black),
                          ),
                          addVerticalSpace(height * 0.04),
                          CustomButton(
                              name: 'Enable Now',
                              onPressed: () {
                                // Navigator.pushReplacement(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (ctx) => MyNavigationBar()));
                                Navigator.pop(context);
                              }),
                          addVerticalSpace(1),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 50,
                              width: width * 0.92,
                              decoration: myFillBoxDecoration(
                                  0, primary.withOpacity(0.3), 50),
                              child: Center(
                                child: Text(
                                  'Skip',
                                  style: bodyText16w600(color: black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ));
                },
              ),
            ));
  }

  Future<void> searchAddressBottomSheet(BuildContext context) {
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
              height: height(context) * 0.75,
              child: Column(
                children: [
                  Container(
                    height: 7,
                    width: width(context) * 0.15,
                    decoration:
                        myFillBoxDecoration(0, black.withOpacity(0.4), 20),
                  ),
                  addVerticalSpace(15),
                  Text(
                    'Select Address',
                    style: bodyText22w700(color: black),
                  ),
                  const Divider(
                    height: 30,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_searching,
                        color: primary,
                        size: 30,
                      ),
                      addHorizontalySpace(10),
                      SizedBox(
                        width: width(context) * 0.7,
                        child: CustomTextField(
                          controller: searchFrom,
                          hinttext: 'From',
                          icon: Icon(Icons.location_searching),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 14),
                        height: height(context) * 0.1,
                        width: 1,
                        color: black,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => SelectVehicalScreen()));
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: myFillBoxDecoration(
                              0, black.withOpacity(0.05), 50),
                          child: Icon(
                            Icons.add,
                            size: 30,
                            color: black.withOpacity(0.5),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: primary,
                        size: 35,
                      ),
                      addHorizontalySpace(10),
                      SizedBox(
                        width: width(context) * 0.7,
                        child: CustomTextField(
                          controller: searchFrom,
                          hinttext: 'Destination',
                          icon: Icon(Icons.location_on),
                        ),
                      )
                    ],
                  ),
                  const Divider(height: 45, thickness: 1),
                  SizedBox(
                    height: height(context) * 0.33,
                    child: ListView.builder(itemBuilder: (ctx, i) {
                      return ListTile(
                        leading: Image.asset('assets/images/timerrepeat.jpg'),
                        title: Text('Elenora Hotel'),
                        subtitle: Text(
                          '6 Glendale St. Worcester, MA 01604',
                          style: bodyText12Small(color: black.withOpacity(0.3)),
                        ),
                        trailing: Text(
                          '6.9 km',
                          style: bodytext12Bold(color: black),
                        ),
                      );
                    }),
                  )
                ],
              ));
        });
      },
    );
  }
}
