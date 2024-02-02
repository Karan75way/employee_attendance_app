import 'package:attendance_app/Constants/colors.dart';
import 'package:attendance_app/Pages/attendancePage.dart';
import 'package:attendance_app/Pages/registerUser.dart';
import 'package:attendance_app/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        useMaterial3: true,
      ),
      home: const SpalshScreen(),
    );
  }
}
