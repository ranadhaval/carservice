import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/constant.dart';
import '../../widget/custom_appbabr2.dart';

class InviteFriendsScreen extends StatefulWidget {
  const InviteFriendsScreen({super.key});

  @override
  State<InviteFriendsScreen> createState() => _InviteFriendsScreenState();
}

class _InviteFriendsScreenState extends State<InviteFriendsScreen> {
  bool isInvited = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar2(
            title: 'Invite Friends',
          )),
      body: Column(
        children: [
          Expanded(
            // height: height(context) * 0.8,
            child: ListView.builder(itemBuilder: (ctx, i) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Image.asset('assets/images/user1.png'),
                      radius: 30,
                      backgroundColor: white,
                    ),
                    title: Text(
                      'Daniel Austin',
                      style: bodyText16w600(color: black),
                    ),
                    subtitle: Text(
                      '+1-300-555-0135',
                      overflow: TextOverflow.ellipsis,
                      style: bodyText12Small(color: black),
                    ),
                    trailing: InkWell(
                      onTap: () {
                        isInvited = !isInvited;
                        setState(() {});
                      },
                      child: Container(
                        height: 25,
                        width: width(context) * 0.2,
                        decoration: isInvited
                            ? myOutlineBoxDecoration(1.5, primary, 30)
                            : myFillBoxDecoration(0, primary, 20),
                        child: Center(
                          child: Text(
                            'Invite',
                            style: bodyText16w600(
                                color: isInvited ? primary : white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 5,
                  )
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
