import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../utils/appbar.dart';
import '../utils/drawer.dart';

var now = DateTime.now();
var firstDay = DateTime(now.year, now.month - 3, now.day);
var lastDay = DateTime(now.year, now.month + 3, now.day);

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarFormat format = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: MyAppBar(),
      body: Column(
        children: [
          TableCalendar(
            focusedDay: now,
            firstDay: firstDay,
            lastDay: lastDay,
            locale: 'pt_BR',
            calendarFormat: format,
            availableCalendarFormats: const {
              CalendarFormat.month: "mês",
              CalendarFormat.week: "semana",
              CalendarFormat.twoWeeks: "2 semanas"
            },
            headerStyle: HeaderStyle(
              leftChevronIcon: const Icon(Icons.chevron_left,
                  size: 24, color: Colors.black54),
              rightChevronIcon: const Icon(Icons.chevron_right,
                  size: 24, color: Colors.black54),
              headerPadding: EdgeInsets.zero,
              formatButtonVisible: true,
              formatButtonShowsNext: true,
              formatButtonDecoration: BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
              ),
              formatButtonTextStyle:
                  const TextStyle(color: Colors.white, fontSize: 12),
              titleTextStyle: const TextStyle(color: Colors.blueGrey),
              titleCentered: true,
            ),
            calendarStyle: CalendarStyle(
              selectedDecoration: const BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape.rectangle,
              ),
              selectedTextStyle: const TextStyle(
                color: Color.fromRGBO(238, 230, 226, 1),
              ),
              todayDecoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.rectangle,
              ),
              todayTextStyle: const TextStyle(color: Colors.blueGrey),
              defaultDecoration: const BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.rectangle,
              ),
              defaultTextStyle: const TextStyle(
                color: Colors.blueGrey,
              ),
              weekendDecoration: const BoxDecoration(
                  color: Colors.transparent, shape: BoxShape.rectangle),
              weekendTextStyle: const TextStyle(color: Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}
