import 'package:car_service_app/utils/constant.dart';
import 'package:car_service_app/view/home/wallet_screen.dart';
import 'package:car_service_app/view/my_bookings_tab/booking_tab.dart';
import 'package:car_service_app/view/home/home_screen.dart';
import 'package:car_service_app/view/home/notification_screen.dart';
import 'package:car_service_app/view/profile_menu/profile_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    BookingTabScreen(),
    WalletScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: shadowDecoration(20, 5),
        height: height(context) * 0.1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedItemColor: black.withOpacity(0.4),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/navbar1.png')),
                  activeIcon:
                      ImageIcon(AssetImage('assets/images/active1.png')),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/navbar2.png')),
                  activeIcon:
                      ImageIcon(AssetImage('assets/images/active2.png')),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/navbar3.png')),

                  label: '',
                  // backgroundColor: Colors.blue,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/navbar4.png')),
                  activeIcon: Icon(Icons.person_rounded),
                  label: '',
                  // backgroundColor: Colors.blue,
                ),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              selectedItemColor: primary,
              iconSize: 40,
              onTap: _onItemTapped,
              elevation: 5),
        ),
      ),
    );
  }
}
