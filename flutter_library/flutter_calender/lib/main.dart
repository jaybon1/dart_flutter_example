import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "aa"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "bb"),
          ],
        ),
        body: SafeArea(
          child: SfCalendar(
            view: CalendarView.month,
            timeSlotViewSettings: TimeSlotViewSettings(
                startHour: 3,
                endHour: 16,
                nonWorkingDays: <int>[DateTime.friday, DateTime.saturday]),
          ),
        ),
      ),
    );
  }
}
