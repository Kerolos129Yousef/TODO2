import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_2/home/TasksList/task_widget.dart';
import 'package:todo_2/my_theme.dart';

class TasksListTap extends StatefulWidget {
  @override
  State<TasksListTap> createState() => _TasksListTapState();
}

class _TasksListTapState extends State<TasksListTap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CalendarTimeline(
            showYears: true,
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(Duration(days: 365)),
            lastDate: DateTime.now().add(Duration(days: 365)),
            onDateSelected: (date) => print(date),
            leftMargin: 20,
            monthColor: Colors.black,
            dayColor: Colors.black,
            activeDayColor: Theme.of(context).primaryColor,
            activeBackgroundDayColor: Colors.white,
            dotsColor: MyTheme.lightblueColor,
            selectableDayPredicate: (date) => true,
            locale: 'en_ISO',

          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return Column(
                children: [
                  TaskWidget(),
                  SizedBox(height: 20,)
                ],
              ) ;
            },itemCount: 20,),
          )

        ],
      ),
    );
  }
}
