import 'package:attendance_app/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: height / 2.5,
              width: width / 2.5,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: primary),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
              label: const Text("capture"),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text("Mark Attendance"))
          ],
        ),
      ),
    );
  }
}
