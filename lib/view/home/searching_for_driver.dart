import 'package:car_service_app/view/home/reason_for_cancelation.dart';
import 'package:car_service_app/view/home/trip_to_destination_screen.dart';
import 'package:flutter/material.dart';

import 'package:slider_button/slider_button.dart';

import '../../utils/constant.dart';

class SearchingForDriver extends StatefulWidget {
  const SearchingForDriver({super.key});

  @override
  State<SearchingForDriver> createState() => _SearchingForDriverState();
}

class _SearchingForDriverState extends State<SearchingForDriver> {
  void initState() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Navigator.push(context,
            MaterialPageRoute(builder: (ctx) => const TripToDestination()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      decoration:
                          myFillBoxDecoration(0, primary.withOpacity(0.5), 50),
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                  addHorizontalySpace(10),
                  Text(
                    'Searching for Driver',
                    style: bodyText18w600(color: black),
                  )
                ],
              ),
              addVerticalSpace(height(context) * 0.1),
              Text(
                'Searching Ride....',
                style: bodyText18w600(color: black),
              ),
              Text(
                'This may take a few seconds...',
                style: bodyText16w600(color: black.withOpacity(0.5)),
              ),
              addVerticalSpace(15),
              Image.asset('assets/images/searching.png'),
              addVerticalSpace(height(context) * 0.16),
              Center(
                  child: SliderButton(
                action: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => ReasonForCancellationScreen()));
                },
                label: const Text(
                  ">> Slide to cancel",
                  style: TextStyle(
                      color: Color(0xff4a4a4a),
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                icon: const Text(
                  "x",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 44,
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
