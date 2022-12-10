import 'package:car_service_app/view/start/log_in_screen.dart';
import 'package:car_service_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/constant.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();

  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: height(context),
            child: PageView(
              controller: pageController,
              onPageChanged: (i) {
                setState(() {
                  if (i == 3) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogInScreen()));
                  }
                });
              },
              children: [
                const PageViewItemWidget(
                  text: "Welcome, to the best taxi driver app",
                  assetUrl: 'assets/images/onb1.png',
                ),
                const PageViewItemWidget(
                  text: "Ready, set, go in just few quick taps.",
                  assetUrl: 'assets/images/onb2.png',
                ),
                const PageViewItemWidget(
                  text: "Welcome, to the best taxi driver app",
                  assetUrl: 'assets/images/onb3.png',
                ),
                LogInScreen()
              ],
            ),
          ),
          Positioned(
            right: width(context) * 0.42,
            bottom: height(context) * 0.22,
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              axisDirection: Axis.horizontal,
              effect: ExpandingDotsEffect(
                  spacing: 4.0,
                  radius: 16.0,
                  dotWidth: 10.0,
                  dotHeight: 8.0,
                  // paintStyle: PaintingStyle.stroke,
                  // strokeWidth: 5,
                  dotColor: Colors.grey,
                  activeDotColor: primary),
            ),
          ),
          Positioned(
              left: 12,
              bottom: height(context) * 0.1,
              child: CustomButton(
                name: 'Continue',
                onPressed: (() {
                  setState(() {});

                  pageController.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut);
                }),
              )),
        ],
      ),
    );
  }
}

class PageViewItemWidget extends StatelessWidget {
  final String text;

  final String assetUrl;

  const PageViewItemWidget({
    Key? key,
    required this.text,
    required this.assetUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        addVerticalSpace(height(context) * 0.2),
        Container(
            height: height(context) * 0.3,
            width: width(context),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                assetUrl,
              ),
              // fit: BoxFit.fill,
            ))),
        addVerticalSpace(20),
        Container(
          width: width(context) * 0.75,
          child: Text(
            text,
            style: bodyText30W600(color: black),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: height(context) * 0.04,
        ),
      ],
    );
  }
}
