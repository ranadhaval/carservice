import 'package:car_service_app/model/emojis.dart';
import 'package:car_service_app/view/home/payment_reciept.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../utils/constant.dart';
import '../../widget/custom_button.dart';

class TripToDestination extends StatefulWidget {
  const TripToDestination({super.key});

  @override
  State<TripToDestination> createState() => _TripToDestinationState();
}

class _TripToDestinationState extends State<TripToDestination> {
  int selectEmoji = 0;
  int selectValue = 0;
  void initState() {
    Future.delayed(
      Duration(seconds: 1),
      () {
        locationSucceful(context);
      },
    );
  }

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
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset('assets/images/way.png'),
                        )
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
                  padding: EdgeInsets.all(15),
                  height: height(context) * 0.23,
                  width: width(context),
                  decoration: shadowDecoration(10, 4),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Trip to Destination',
                            style: bodyText18w600(color: black),
                          ),
                          Text(
                            '2.9 KM',
                            style: bodyText14w600(color: black),
                          )
                        ],
                      ),
                      const Divider(
                        height: 35,
                        thickness: 1,
                      ),
                      InkWell(
                        onTap: (() {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (ctx) => DriverDetailScreen()));
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
                    ],
                  )))
        ],
      ),
    );
  }

  locationSucceful(BuildContext context) {
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
                            'You have arrived at your destination!',
                            textAlign: TextAlign.center,
                            style: bodyText20w700(color: black),
                          ),
                          Text(
                            'See you on the next trip :)',
                            textAlign: TextAlign.center,
                            style: bodyText12Small(spacing: 1.4, color: black),
                          ),
                          addVerticalSpace(height * 0.03),
                          CustomButton(
                              name: 'OK',
                              onPressed: () {
                                yourMoodBottomSheet(context);
                              }),
                        ],
                      ));
                },
              ),
            ));
  }

  Future<void> yourMoodBottomSheet(BuildContext context) {
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
                    'Your Mood',
                    style: bodyText22w700(color: black),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
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
                              style: bodyText13normal(
                                  color: black.withOpacity(0.5)),
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
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Text(
                    'What’s Your Mood!',
                    style: bodyText22w700(color: black),
                  ),
                  Text('about this trip?'),
                  addVerticalSpace(15),
                  SizedBox(
                    height: height(context) * 0.3,
                    child: GridView.builder(
                        itemCount: emojiList.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 1.4, crossAxisCount: 3),
                        itemBuilder: (ctx, i) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  selectEmoji = i;
                                  setState(() {});
                                },
                                child: Container(
                                  height: height(context) * 0.08,
                                  width: width(context) * 0.2,
                                  decoration: selectEmoji == i
                                      ? myOutlineBoxDecoration(1.2, primary, 15)
                                      : BoxDecoration(),
                                  child: Image.asset(emojiList[i]),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  addVerticalSpace(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: height(context) * 0.06,
                          width: width(context) * 0.45,
                          decoration: myFillBoxDecoration(
                              0, primary.withOpacity(0.3), 40),
                          child: Center(
                            child: Text(
                              'Cancel',
                              style: bodyText16w600(color: black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width(context) * 0.45,
                        child: CustomButton(
                            name: 'Submit',
                            onPressed: () {
                              ratingBarBottomSheet(context);

                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (ctx) => LogInScreen()));
                            }),
                      )
                    ],
                  )
                ],
              ));
        });
      },
    );
  }

  Future<void> ratingBarBottomSheet(BuildContext context) {
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
              height: height(context) * 0.76,
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
                    'Rate Driver',
                    style: bodyText22w700(color: black),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
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
                              style: bodyText13normal(
                                  color: black.withOpacity(0.5)),
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
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Text(
                    'Rate the behaviour of the pilot',
                    style: bodyText16w600(color: black),
                  ),
                  addVerticalSpace(5),
                  RatingBar.builder(
                    initialRating: 4,
                    itemPadding: EdgeInsets.symmetric(horizontal: 8),
                    minRating: 1,
                    itemSize: 40,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    unratedColor: Colors.grey.shade300,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  addVerticalSpace(15),
                  Text(
                    'Rate the puncuality of the pilot',
                    style: bodyText16w600(color: black),
                  ),
                  addVerticalSpace(5),
                  RatingBar.builder(
                    initialRating: 4,
                    itemPadding: EdgeInsets.symmetric(horizontal: 8),
                    minRating: 1,
                    itemSize: 40,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    unratedColor: Colors.grey.shade300,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  addVerticalSpace(15),
                  Text(
                    'Rate the cleanliness of the pilot',
                    style: bodyText16w600(color: black),
                  ),
                  addVerticalSpace(5),
                  RatingBar.builder(
                    initialRating: 4,
                    itemPadding: EdgeInsets.symmetric(horizontal: 8),
                    minRating: 1,
                    itemSize: 40,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    unratedColor: Colors.grey.shade300,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  addVerticalSpace(15),
                  Text(
                    'Rate the ride satisfication',
                    style: bodyText16w600(color: black),
                  ),
                  addVerticalSpace(5),
                  RatingBar.builder(
                    initialRating: 4,
                    itemPadding: EdgeInsets.symmetric(horizontal: 8),
                    minRating: 1,
                    itemSize: 40,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    unratedColor: Colors.grey.shade300,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  addVerticalSpace(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: height(context) * 0.06,
                          width: width(context) * 0.45,
                          decoration: myFillBoxDecoration(
                              0, primary.withOpacity(0.3), 40),
                          child: Center(
                            child: Text(
                              'Cancel',
                              style: bodyText16w600(color: black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width(context) * 0.45,
                        child: CustomButton(
                            name: 'Submit',
                            onPressed: () {
                              tipForDelivaryBoyPopup(context);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (ctx) => LogInScreen()));
                            }),
                      )
                    ],
                  )
                ],
              ));
        });
      },
    );
  }

  Future<void> tipForDelivaryBoyPopup(BuildContext context) {
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
              height: height(context) * 0.6,
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
                    'Rate Driver',
                    style: bodyText22w700(color: black),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
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
                              style: bodyText13normal(
                                  color: black.withOpacity(0.5)),
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
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Text(
                    'Please choose the amount',
                    style: bodyText22w700(color: black),
                  ),
                  addVerticalSpace(8),
                  Text('Please tip your driver...'),
                  addVerticalSpace(15),
                  SizedBox(
                    height: height(context) * 0.12,
                    child: ListView.builder(
                        itemCount: driverTipList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, i) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectValue = i;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(7),
                                  height: height(context) * 0.085,
                                  width: width(context) * 0.19,
                                  decoration: selectValue == i
                                      ? myFillBoxDecoration(0, primary, 10)
                                      : myOutlineBoxDecoration(
                                          1.5, primary, 10),
                                  child: Center(
                                    child: Text(
                                      driverTipList[i].toString(),
                                      style: bodyText18w600(
                                          color:
                                              selectValue == i ? white : black),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  addVerticalSpace(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: height(context) * 0.06,
                          width: width(context) * 0.45,
                          decoration: myFillBoxDecoration(
                              0, primary.withOpacity(0.3), 40),
                          child: Center(
                            child: Text(
                              'No, Thanks!',
                              style: bodyText16w600(color: black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width(context) * 0.45,
                        child: CustomButton(
                            name: 'Pay Tip',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) =>
                                          PaymentRecieptScreen()));
                            }),
                      )
                    ],
                  )
                ],
              ));
        });
      },
    );
  }
}
