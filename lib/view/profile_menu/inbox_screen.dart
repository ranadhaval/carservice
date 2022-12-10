import 'package:car_service_app/utils/constant.dart';
import 'package:car_service_app/widget/custom_appbabr2.dart';
import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar2(title: 'Inbox')),
      body: Column(
        children: [
          TabBar(
            labelColor: primary,
            indicatorWeight: 2,
            unselectedLabelColor: black.withOpacity(0.7),
            indicatorColor: primary,
            labelStyle: bodyText14w600(color: primary),
            controller: _tabController,
            tabs: const <Widget>[
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Calls"),
              ),
            ],
          ),
          Expanded(
              child: TabBarView(controller: _tabController, children: [
            SizedBox(
              height: height(context) * 0.8,
              child: ListView.builder(itemBuilder: (ctx, i) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Image.asset('assets/images/user2.png'),
                        radius: 30,
                        backgroundColor: white,
                      ),
                      title: Text(
                        'Simi',
                        style: bodyText16w600(color: black),
                      ),
                      subtitle: Text(
                        'The lorem ipsum is a placeholder........ ',
                        overflow: TextOverflow.ellipsis,
                        style: bodyText12Small(color: black),
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            '4:52 pm',
                            style: bodyText11Small(color: black),
                          ),
                          addVerticalSpace(5),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: myFillBoxDecoration(0, primary, 20),
                            child: Center(
                              child: Text(
                                '1',
                                style: bodyText16w600(color: white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 5,
                    )
                  ],
                );
              }),
            ),
            SizedBox(
              height: height(context) * 0.8,
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
                        'Ayush Singh',
                        style: bodyText16w600(color: black),
                      ),
                      subtitle: Text(
                        'ayushi Singh ',
                        overflow: TextOverflow.ellipsis,
                        style: bodyText12Small(color: black),
                      ),
                      trailing: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: myFillBoxDecoration(
                                0, black.withOpacity(0.05), 20),
                            child: Center(
                              child: Icon(
                                Icons.call_outlined,
                                color: black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 5,
                    )
                  ],
                );
              }),
            )
          ]))
        ],
      ),
    );
  }
}
