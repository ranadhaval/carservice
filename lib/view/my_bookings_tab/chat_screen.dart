import 'package:car_service_app/utils/constant.dart';
import 'package:car_service_app/widget/custom_textfield.dart';

import 'package:flutter/material.dart';


import '../../model/chat_buuble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: black,
            )),
        title: Row(children: [
          CircleAvatar(
            child: Image.asset('assets/images/user1.png'),
          ),
          addHorizontalySpace(10),
          Text(
            'Sumit Patil',
            style: bodyText16w600(color: black),
          )
        ]),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call,
                color: black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            addVerticalSpace(15),
            SizedBox(
              height: height(context) * 0.8,
              child: ListView.builder(
                  itemCount: chatList.length,
                  itemBuilder: (ctx, i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Align(
                        alignment: chatList[i].isCurrentUser
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: chatList[i].isCurrentUser
                                ? primary
                                : Colors.grey[300],
                            borderRadius: chatList[i].isCurrentUser
                                ? const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                  )
                                : const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              chatList[i].text,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: chatList[i].isCurrentUser
                                          ? Colors.white
                                          : Colors.black87),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: width(context) * 0.77,
                      child: CustomTextField(
                          controller: _controller, hinttext: 'Messages...')),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: myFillBoxDecoration(0, primary, 50),
                      child: Icon(
                        Icons.mic,
                        size: 25,
                        color: white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List chatList = [
    const ChatBubble(
      text: 'The lorem ipsum is a placeholder text used in publishing',
      isCurrentUser: true,
    ),
    const ChatBubble(
      text: 'Ok, when is the next date?',
      isCurrentUser: false,
    ),
    const ChatBubble(
      text: 'The lorem ipsum is a placeholder text used in publishing',
      isCurrentUser: true,
    ),
    const ChatBubble(
      text: 'Let\'s do it!',
      isCurrentUser: false,
    ),
  ];
}
