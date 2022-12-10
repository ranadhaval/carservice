import 'package:car_service_app/view/profile_menu/profile_screen.dart';
import 'package:car_service_app/view/start/on_boarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Car Service',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: GoogleFonts.poppins().fontFamily),
        home: OnBoardingScreen());
  }
}
