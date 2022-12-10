import 'package:car_service_app/utils/constant.dart';
import 'package:car_service_app/widget/custom_button.dart';
import 'package:car_service_app/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widget/custom_appbabr2.dart';

class AddressScreen extends StatelessWidget {
  AddressScreen({super.key});

  final List addressList = ['Home', 'Work', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar2(title: 'Address')),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: addressList.length,
                  itemBuilder: (ctx, i) {
                    return Column(
                      children: [
                        ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: myFillBoxDecoration(0, primary, 30),
                            child: Center(
                                child: Icon(
                              Icons.location_on,
                              // size: 20,
                              color: white,
                            )),
                          ),
                          title: Text(
                            addressList[i],
                            style: bodyText16w600(color: black),
                          ),
                          subtitle: Text(
                            'ABC Estate, 16 Apple Ct, Community 12, Surat',
                            overflow: TextOverflow.ellipsis,
                            style:
                                bodyText12Small(color: black.withOpacity(0.5)),
                          ),
                          trailing: Container(
                            height: 40,
                            width: 40,
                            decoration: myFillBoxDecoration(0, primary, 30),
                            child: Center(
                                child: Icon(
                              Icons.edit,
                              size: 20,
                              color: white,
                            )),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        )
                      ],
                    );
                  })),
          CustomButton(
              name: 'Add New Address',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => AddAddressScreen()));
              }),
          addVerticalSpace(30)
        ],
      ),
    );
  }
}

class AddAddressScreen extends StatelessWidget {
  AddAddressScreen({super.key});

  final TextEditingController nameAddress = TextEditingController();
  final TextEditingController detailClass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Center(
                        child: CustomButton(
                            name: 'Add Address',
                            onPressed: () {
                              addAddressDialog(context);
                            })),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> addAddressDialog(BuildContext context) {
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
              height: height(context) * 0.55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 7,
                      width: width(context) * .1,
                      decoration:
                          myFillBoxDecoration(0, black.withOpacity(0.5), 20),
                    ),
                  ),
                  addVerticalSpace(15),
                  Center(
                    child: Text(
                      'Address Details',
                      style: bodyText22w700(color: black),
                    ),
                  ),
                  const Divider(
                    height: 40,
                    thickness: 1,
                  ),
                  Text(
                    'Name Address',
                    style: bodyText16w600(color: black),
                  ),
                  addVerticalSpace(16),
                  CustomTextField(
                      controller: nameAddress, hinttext: 'Apartment'),
                  addVerticalSpace(30),
                  Text(
                    'Address Details',
                    style: bodyText16w600(color: black),
                  ),
                  addVerticalSpace(16),
                  CustomTextField(
                      icon: Icon(Icons.location_on),
                      controller: nameAddress,
                      hinttext: '931 Indian Summer Drive Taylor, MI 48180'),
                  addVerticalSpace(height(context) * 0.06),
                  CustomButton(name: 'Add Address', onPressed: () {})
                ],
              ));
        });
      },
    );
  }
}
