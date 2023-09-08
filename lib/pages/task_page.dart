import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

import 'add_task_page.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {

  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedDay = _focusedDay;
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width ;
    double screenHeight = MediaQuery. of(context). size. height;
    final DateFormat formatter = DateFormat('EEEE d');
    final String formattedDate = formatter.format(_selectedDay!);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromRGBO(0, 33, 114, 1),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddTaskPage() ));
        },
        label: Text("Add Task", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 16),),
        icon: Icon(Icons.add),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.red,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TableCalendar(
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
                    weekendStyle: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),

                  ),

                  headerStyle: HeaderStyle(
                      titleTextStyle: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
                      titleCentered: true,
                      formatButtonVisible: false,
                      leftChevronIcon: Icon(Icons.arrow_back_outlined, color: Colors.black,),
                      rightChevronIcon: Icon(Icons.arrow_forward_outlined,  color: Colors.black,)

                  ),
                  onDaySelected: _onDaySelected,
                  calendarStyle: CalendarStyle(
                    weekendTextStyle: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
                    defaultTextStyle: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
                    selectedDecoration: BoxDecoration(
                      color: Color.fromRGBO(0, 33, 114, 1),
                      shape: BoxShape.circle,
                    ),
                    todayDecoration: BoxDecoration(
                      color: Color.fromRGBO(0, 33, 114, 0.5),
                      shape: BoxShape.circle,

                    ),
                    rowDecoration: BoxDecoration(
                      // color: Colors.red
                    ),
                  ),
                  calendarFormat: CalendarFormat.week,

                  focusedDay: _focusedDay,
                  firstDay: DateTime.utc(2010, 3, 14),
                  lastDay: DateTime.utc(2050, 3, 14),
                  selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                ),

                SizedBox(height: 26,),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 16),
                  child: Text("$formattedDate", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),),
                ),

                Divider(
                  color: Colors.black,
                  thickness: 0.7,
                ),

                SizedBox(height: 16,),

                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Text("9 AM", style:  GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 16),),
                      SizedBox(width: 16,),
                      Stack(
                        children: [
                          Container(
                            width: screenWidth*0.828,
                            height: 40,
                            alignment: Alignment.centerLeft,
                            color: Colors.red.withOpacity(0.3),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text("BERNARD IS THE BEST PROGRAMMER", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color: Colors.red),),
                            ),
                          ),
                          Container(
                             width: 6,
                            height: 40,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16,),

                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Text("11 AM", style:  GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 15),),
                      SizedBox(width: 10,),
                      Stack(
                        children: [
                          Container(
                            width: screenWidth*0.8198,
                            height: 55,
                            alignment: Alignment.centerLeft,
                            color: Colors.yellow.withOpacity(0.3),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0, top: 5, bottom: 5),
                              child: Text("BERNARD HAS TO LEARN PROGRAMMING AND DO AN ASSIGNMENT TO BE SUBMITTED NEXT TUESDAY", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color: Colors.yellow),),
                            ),
                          ),
                          Container(
                            width: 6,
                            height: 55,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if(!isSameDay(_selectedDay, selectedDay)){
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
    }
  }
}
