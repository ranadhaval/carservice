import 'package:car_service_app/view/my_bookings_tab/driver_is_arrivinng_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class BookingTabScreen extends StatefulWidget {
  const BookingTabScreen({Key? key}) : super(key: key);

  @override
  State<BookingTabScreen> createState() => _BookingTabScreenState();
}

class _BookingTabScreenState extends State<BookingTabScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("My Booking"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 11),
            child: CircleAvatar(
              backgroundColor: white,
              child: Image.asset("assets/images/profile.png"),
            ),
          )
        ],
        bottom: TabBar(
          labelColor: primary,
          unselectedLabelColor: black.withOpacity(0.7),
          indicatorColor: primary,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              child: Text("Active Now"),
            ),
            Tab(
              child: Text("Completed"),
            ),
            Tab(
              child: Text("Cancelled"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: ActiveTab(),
          ),
          Center(
            child: CompleteAndCancelTab(
                status: 'Completed', statusColor: Colors.green),
          ),
          Center(
            child: CompleteAndCancelTab(
                status: 'Cancelled', statusColor: Colors.red),
          ),
        ],
      ),
    );
  }
}

class ActiveTab extends StatefulWidget {
  const ActiveTab({Key? key}) : super(key: key);

  @override
  State<ActiveTab> createState() => _ActiveTabState();
}

class _ActiveTabState extends State<ActiveTab> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(
                  color: Colors.black,
                  width: 0.1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: isExpanded
                      ? height(context) * 0.74
                      : height(context) * 0.2,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  child:
                                      Image.asset("assets/images/booking.png"),
                                ),
                                addHorizontalySpace(15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Daniel Austin',
                                      style: bodyText16w600(color: black),
                                    ),
                                    Text(
                                      'Suzuki Ciaz E-Cl',
                                      style: bodyText13normal(
                                          color: black.withOpacity(0.5)),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.all(11),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 11, vertical: 4),
                                        decoration:
                                            myFillBoxDecoration(1, primary, 20),
                                        child: Text("Active")),
                                    Text(
                                      'HSW 4736 XK',
                                      style: bodyText14w600(color: black),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.black38,
                      ),
                      isExpanded
                          ? Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(Icons.location_on_outlined),
                                        Text(" 4.5 km"),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Icon(Icons.timer_outlined),
                                        Text(" 20 mins"),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Icon(Icons
                                            .account_balance_wallet_outlined),
                                        Text(" Rs.60"),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height(context) * 0.03,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: const [
                                        Text("Date & Time"),
                                      ],
                                    ),
                                    const SizedBox(),
                                    Row(
                                      children: const [
                                        Text("Dec 20,2024 I 10:00 AM"),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height(context) * 0.01,
                                ),
                                const Divider(
                                  color: Colors.black38,
                                ),
                                Container(
                                  height: height(context) * 0.2,
                                  margin: const EdgeInsets.all(11),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: myFillBoxDecoration(0,
                                                primary.withOpacity(0.9), 50),
                                            child: Icon(
                                              Icons.location_searching_outlined,
                                              color: white,
                                            ),
                                          ),
                                          addHorizontalySpace(10),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Soft Bank",
                                                  style: bodyText20w700(
                                                      color: Colors.black)),
                                              Text(
                                                  "35 Oak Ave, Antiach, TN 37013"),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, top: 4, bottom: 4),
                                        child: Container(
                                          height: height(context) * 0.06,
                                          width: 2,
                                          color: black,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: myFillBoxDecoration(0,
                                                primary.withOpacity(0.9), 50),
                                            child: Icon(
                                              Icons.location_on,
                                              color: white,
                                            ),
                                          ),
                                          addHorizontalySpace(10),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Soft Bank",
                                                  style: bodyText20w700(
                                                      color: Colors.black)),
                                              Text(
                                                  "26 State St. Daphne, Al 36526"),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (ctx) =>
                                                DriverIsArrivingScreen()));
                                  },
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    height: height(context) * 0.2,
                                    child:
                                        Image.asset('assets/images/map2.png'),
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox(),
                      InkWell(
                        onTap: () {
                          isExpanded = !isExpanded;
                          setState(() {});
                        },
                        child: Container(
                          margin: const EdgeInsets.all(3),
                          child: Icon(
                            isExpanded
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down_outlined,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class CompleteAndCancelTab extends StatefulWidget {
  const CompleteAndCancelTab(
      {Key? key, required this.statusColor, required this.status})
      : super(key: key);

  final Color statusColor;
  final String status;

  @override
  State<CompleteAndCancelTab> createState() => _CompleteAndCancelTabState();
}

class _CompleteAndCancelTabState extends State<CompleteAndCancelTab> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(
                  color: Colors.black,
                  width: 0.1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: isExpanded
                      ? height(context) * 0.55
                      : height(context) * 0.2,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  child:
                                      Image.asset("assets/images/booking.png"),
                                ),
                                addHorizontalySpace(15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Daniel Austin',
                                      style: bodyText16w600(color: black),
                                    ),
                                    Text(
                                      'Suzuki Ciaz E-Cl',
                                      style: bodyText13normal(
                                          color: black.withOpacity(0.5)),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                        width: width(context) * 0.3,
                                        margin: EdgeInsets.all(11),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 11, vertical: 4),
                                        decoration: myFillBoxDecoration(
                                            1, widget.statusColor, 20),
                                        child: Text(
                                          widget.status,
                                          style: bodyText14normal(color: white),
                                        )),
                                    Text(
                                      'HSW 4736 XK',
                                      style: bodyText14w600(color: black),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.black38,
                      ),
                      isExpanded
                          ? Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(Icons.location_on_outlined),
                                        Text(" 4.5 km"),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Icon(Icons.timer_outlined),
                                        Text(" 20 mins"),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Icon(Icons
                                            .account_balance_wallet_outlined),
                                        Text(" Rs.60"),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height(context) * 0.03,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: const [
                                        Text("Date & Time"),
                                      ],
                                    ),
                                    const SizedBox(),
                                    Row(
                                      children: const [
                                        Text("Dec 20,2024 I 10:00 AM"),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height(context) * 0.01,
                                ),
                                const Divider(
                                  color: Colors.black38,
                                ),
                                Container(
                                  height: height(context) * 0.2,
                                  margin: const EdgeInsets.all(11),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: myFillBoxDecoration(0,
                                                primary.withOpacity(0.9), 50),
                                            child: Icon(
                                              Icons.location_searching_outlined,
                                              color: white,
                                            ),
                                          ),
                                          addHorizontalySpace(10),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Soft Bank",
                                                  style: bodyText20w700(
                                                      color: Colors.black)),
                                              Text(
                                                  "35 Oak Ave, Antiach, TN 37013"),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, top: 4, bottom: 4),
                                        child: Container(
                                          height: height(context) * 0.06,
                                          width: 2,
                                          color: black,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: myFillBoxDecoration(0,
                                                primary.withOpacity(0.9), 50),
                                            child: Icon(
                                              Icons.location_on,
                                              color: white,
                                            ),
                                          ),
                                          addHorizontalySpace(10),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Soft Bank",
                                                  style: bodyText20w700(
                                                      color: Colors.black)),
                                              Text(
                                                  "26 State St. Daphne, Al 36526"),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox(),
                      InkWell(
                        onTap: () {
                          isExpanded = !isExpanded;
                          setState(() {});
                        },
                        child: Container(
                          margin: const EdgeInsets.all(3),
                          child: Icon(
                            isExpanded
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down_outlined,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
