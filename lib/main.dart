import 'package:flutter/material.dart';
import 'package:pixalive_project/Otppage.dart';
import 'package:pixalive_project/loginPage.dart';

import 'PhoneNumberPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pixalive Project',


      home: OTPVerificationScreen(),
    );
  }
}
