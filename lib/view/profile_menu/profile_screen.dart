import 'package:car_service_app/utils/constant.dart';
import 'package:car_service_app/view/home/notification_screen.dart';
import 'package:car_service_app/view/profile_menu/address_screen.dart';
import 'package:car_service_app/view/profile_menu/edit_profile_screen.dart';
import 'package:car_service_app/view/profile_menu/help_center_screen.dart';
import 'package:car_service_app/view/profile_menu/inbox_screen.dart';
import 'package:car_service_app/view/profile_menu/invite_friends_screen.dart';
import 'package:car_service_app/view/profile_menu/language_choose_screen.dart';
import 'package:car_service_app/view/profile_menu/notification_settings.dart';
import 'package:car_service_app/view/profile_menu/payments_method_screen.dart';
import 'package:car_service_app/view/profile_menu/privacy_policy.dart';
import 'package:car_service_app/view/profile_menu/promo_code_screen.dart';
import 'package:car_service_app/view/profile_menu/security_setting_screen.dart';
import 'package:car_service_app/view/start/log_in_screen.dart';
import 'package:car_service_app/widget/custom_appbar.dart';
import 'package:car_service_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final List menuList = [
    {
      'name': 'Edit Profile',
      'icon': const Icon(
        Icons.person_outline_outlined,
        size: 35,
      )
    },
    {
      'name': 'Inbox',
      'icon': const Icon(
        Icons.mail_outline_outlined,
        size: 30,
      )
    },
    {
      'name': 'Address',
      'icon': const Icon(
        Icons.location_on_outlined,
        size: 30,
      )
    },
    {
      'name': 'Notification',
      'icon': const Icon(
        Icons.notifications_on_outlined,
        size: 30,
      )
    },
    {
      'name': 'Payment',
      'icon': const Icon(
        Icons.credit_card_outlined,
        size: 30,
      )
    },
    {
      'name': 'Security',
      'icon': const Icon(
        Icons.privacy_tip_outlined,
        size: 30,
      )
    },
    {
      'name': 'Language',
      'icon': const Icon(
        Icons.sort_by_alpha_sharp,
        size: 30,
      )
    },
    {
      'name': 'Privacy Policy',
      'icon': const Icon(
        Icons.policy_outlined,
        size: 30,
      )
    },
    {
      'name': 'Help Center',
      'icon': const Icon(
        Icons.headset_mic_outlined,
        size: 30,
      )
    },
    {
      'name': 'Invite Friends',
      'icon': const Icon(
        Icons.people,
        size: 30,
      )
    },
    {
      'name': 'Notification Settings',
      'icon': const Icon(
        Icons.settings,
        size: 30,
      )
    },
    {
      'name': 'Promo Code',
      'icon': const Icon(
        Icons.code,
        size: 30,
      )
    },
    {
      'name': 'Logout',
      'icon': const Icon(
        Icons.logout_outlined,
        color: Colors.red,
        size: 30,
      )
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: CustomAppBar(title: 'Profile'),
          preferredSize: Size.fromHeight(50)),
      body: SingleChildScrollView(
        child: Column(children: [
          addVerticalSpace(20),
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: black.withOpacity(0.2),
                  child: Icon(
                    Icons.person,
                    color: white,
                    size: 70,
                  ),
                ),
                Positioned(
                    bottom: 3,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: primary,
                      radius: 15,
                      child: Icon(
                        Icons.edit,
                        size: 18,
                        color: white,
                      ),
                    ))
              ],
            ),
          ),
          addVerticalSpace(10),
          Text(
            'Andrew Ainsley',
            style: bodyText18w600(color: black),
          ),
          Text('+1 111 467 378 399'),
          const Divider(
            thickness: 1,
          ),
          SizedBox(
            height: height(context) * 0.94,
            child: ListView.builder(
                itemCount: menuList.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: menuList[index]['icon'],
                    title: Text(
                      menuList[index]['name'],
                      style: bodyText16w600(
                          color: index == 12 ? Colors.red : black),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => EditProfileScreen()));
                      }
                      if (index == 1) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => InboxScreen()));
                      }
                      if (index == 2) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => AddressScreen()));
                      }
                      if (index == 3) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => NotificationScreen()));
                      }
                      if (index == 4) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => PaymentsMethodScreen()));
                      }
                      if (index == 5) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => SecuritySettingScreen()));
                      }
                      if (index == 6) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => LanguageSelectScreen()));
                      }
                      if (index == 7) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => PrivacyPolicy()));
                      }
                      if (index == 8) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => HelpCenterScreen()));
                      }
                      if (index == 9) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => InviteFriendsScreen()));
                      }
                      if (index == 10) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) =>
                                    NotificationSettingsScreen()));
                      }
                      if (index == 11) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => PromoCodeScreen()));
                      }
                      if (index == 12) {
                        logOutPopup(context);
                      }
                    },
                  );
                })),
          )
        ]),
      ),
    );
  }

  Future<void> logOutPopup(BuildContext context) {
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
              height: height(context) * 0.28,
              child: Column(
                children: [
                  Text(
                    'Logout',
                    style: bodyText22w700(color: black),
                  ),
                  addVerticalSpace(15),
                  const Divider(
                    thickness: 1,
                  ),
                  addVerticalSpace(15),
                  Text(
                    'Are you sure you want to logout?',
                    style: bodyText16normal(color: black),
                  ),
                  addVerticalSpace(20),
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
                            name: 'Logout',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => LogInScreen()));
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
