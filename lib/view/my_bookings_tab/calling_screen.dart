import 'package:car_service_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CallingScreen extends StatelessWidget {
  const CallingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          addVerticalSpace(height(context) * 0.1),
          Center(
            child: CircleAvatar(
              backgroundColor: primary,
              radius: 100,
              child: Image.asset('assets/images/user1.png'),
            ),
          ),
          addVerticalSpace(height(context) * 0.1),
          Text(
            'Daniel Austin',
            style: bodyText30W600(color: black),
          ),
          Text(
            '01:25 minutes',
            style: bodyText16w600(color: black),
          ),
          addVerticalSpace(height(context) * 0.07),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration:
                      myFillBoxDecoration(0, primary.withOpacity(0.3), 50),
                  child: const Icon(
                    Icons.close,
                    size: 40,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  //   Navigator.push(
                  // context,
                  // MaterialPageRoute(
                  //     builder: (ctx) => DriverDetailScreen()));
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: myFillBoxDecoration(0, primary, 50),
                  child: Icon(
                    Icons.missed_video_call_outlined,
                    size: 40,
                    color: white,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (ctx) => CallingScreen()));
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: myFillBoxDecoration(0, primary, 50),
                  child: Icon(
                    Icons.volume_up_outlined,
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
