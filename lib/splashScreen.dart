import 'package:attendance_app/Constants/colors.dart';
import 'package:attendance_app/Pages/registerUser.dart';
import 'package:flutter/material.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  Future<dynamic> Logo() async {
    return (
      await Future.delayed(const Duration(seconds: 4)),
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const RegisterUser()),
      )
    );
  }

  @override
  void initState() {
    Logo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: white,
                  border: Border.all(color: Colors.white, width: 1),
                  shape: BoxShape.circle),
              child: Image.asset(
                'assets/images/logo.png',
                height: height / 3,
                width: width / 3,
                fit: BoxFit.contain,
              ),
            ),
            const Text(
              "Attendance App",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
