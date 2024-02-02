import 'package:attendance_app/Constants/colors.dart';
import 'package:attendance_app/Pages/attendancePage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({super.key});

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: Stream.periodic(const Duration(seconds: 1)),
          builder: (context, snapshot) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Date: ${DateFormat('MM/dd/yyyy ').format(DateTime.now())}",
                  style: const TextStyle(color: white, fontSize: 15),
                ),
                Text(
                  "Time: ${DateFormat(' HH:mm:ss').format(DateTime.now())}",
                  style: const TextStyle(color: white, fontSize: 15),
                ),
              ],
            );
          },
        ),
        backgroundColor: primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  height: height / 2.5,
                  width: width / 2.5,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: primary),
                    shape: BoxShape.circle,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt),
                  label: const Text("capture"),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: width / 1.5,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[100]),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Your Name', border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.person_2_rounded),
                    label: const Text("Register Yourself")),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          (MaterialPageRoute(
                              builder: (context) => const AttendancePage())));
                    },
                    child: Text("or  ..Mark Attendance"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
