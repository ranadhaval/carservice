import 'package:car_service_app/view/home/searching_for_driver.dart';
import 'package:car_service_app/widget/custom_appbabr2.dart';
import 'package:car_service_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/constant.dart';

class LocationDetailsScreen extends StatelessWidget {
  const LocationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar2(title: 'Location Deatils')),
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: width(context) * 0.3,
                            decoration: myFillBoxDecoration(0, primary, 8),
                            child: Center(
                                child: Text(
                              'Soft bank',
                              style: bodyText14w600(color: white),
                            )),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: myFillBoxDecoration(
                                0, primary.withOpacity(0.4), 50),
                            child: Center(
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: myFillBoxDecoration(0, primary, 50),
                                child: Icon(
                                  Icons.location_searching_rounded,
                                  color: white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: -15,
              child: Container(
                  height: height(context) * 0.15,
                  width: width(context),
                  decoration: shadowDecoration(32, 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                          name: 'Get Location',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => SearchingForDriver()));
                          })
                    ],
                  )))
        ],
      ),
    );
  }
}
