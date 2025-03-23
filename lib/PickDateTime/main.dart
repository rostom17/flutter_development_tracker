import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _dateTime = DateTime(2020, 12, 25);
  TimeOfDay? timeOfDay = const TimeOfDay(hour: 12, minute: 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurpleAccent,
        title: Center(
          child: Text(
            "Pick Date And Time",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () async {
                DateTime? _newDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (_newDate != null) {
                  setState(() {
                    _dateTime = _newDate;
                  });
                }
              },
              child: Text(
                "${_dateTime.day}-${_dateTime.month}-${_dateTime.year}",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            GestureDetector(
              onTap: () async {
                TimeOfDay? newTime = await showTimePicker(
                  context: context,
                  initialTime: timeOfDay!,
                );
                if (newTime != null) {
                  setState(() {
                    timeOfDay = newTime;
                  });
                }
              },
              child: Text(
                "${timeOfDay!.hour.toString()} : ${timeOfDay!.minute.toString()}",
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
