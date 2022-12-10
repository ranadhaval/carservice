import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/constant.dart';
import '../../widget/custom_appbar.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_textfield.dart';

enum SelectGender { male, female, other }

class EditProfileScreen extends StatefulWidget {
  EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController firstName = TextEditingController();

  final TextEditingController lastName = TextEditingController();

  final TextEditingController dateOfbirth = TextEditingController();

  final TextEditingController email = TextEditingController();

  final TextEditingController licence = TextEditingController();

  SelectGender _value = SelectGender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(title: 'Edit Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: black.withOpacity(0.1),
                      child: Icon(
                        Icons.person,
                        color: white,
                        size: 50,
                      ),
                    ),
                    Positioned(
                        bottom: 1,
                        right: 0,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: myFillBoxDecoration(0, primary, 30),
                          child: Center(
                            child: Icon(
                              Icons.edit,
                              color: white,
                              size: 15,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              addVerticalSpace(40),
              CustomTextField(controller: firstName, hinttext: 'Full Name'),
              addVerticalSpace(20),
              CustomTextField(controller: lastName, hinttext: 'Surname'),
              addVerticalSpace(20),
              CustomTextField(
                  controller: dateOfbirth, hinttext: 'Date of Birth'),
              addVerticalSpace(20),
              CustomTextField(controller: email, hinttext: 'Email'),
              addVerticalSpace(20),
              CustomTextField(
                  controller: licence, hinttext: 'Driving license ID'),
              addVerticalSpace(height(context) * 0.05),
              Text(
                'Gender preference',
                style: bodyText14w600(color: black.withOpacity(0.5)),
              ),
              addVerticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Male'),
                  ),
                  Radio(
                      value: SelectGender.male,
                      activeColor: primary,
                      groupValue: _value,
                      onChanged: (val) {
                        _value = val!;
                        setState(() {});
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Female'),
                  ),
                  Radio(
                      activeColor: primary,
                      value: SelectGender.female,
                      groupValue: _value,
                      onChanged: (val) {
                        _value = val!;
                        setState(() {});
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Other'),
                  ),
                  Radio(
                      activeColor: primary,
                      value: SelectGender.other,
                      groupValue: _value,
                      onChanged: (val) {
                        _value = val!;
                        setState(() {});
                      }),
                ],
              ),
              addVerticalSpace(20),
              CustomButton(
                  name: 'Update',
                  onPressed: () {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (ctx) => Wallet()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
