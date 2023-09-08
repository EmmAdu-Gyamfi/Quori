import 'package:flutter/material.dart';
import 'package:quori/pages/feed_page.dart';
import 'package:quori/pages/help_page.dart';
import 'package:quori/pages/snr_lecturer_page.dart';
import 'package:quori/pages/task_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    final tabs = [
     FeedPage(),
     TaskPage(),
      SnrLecturerPage(),
      HelpPage()
    ];

    return Scaffold(
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type : BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(0, 33, 114, 1),
        onTap: (val){
          setState(() {
            _selectedIndex = val;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.feed, size: 30,), label: "Feed"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month, size: 30), label: "Task"),
          BottomNavigationBarItem(icon: Icon(Icons.smart_toy_rounded, size: 30), label: "Snr Lecturer"),
          BottomNavigationBarItem(icon: Icon(Icons.manage_accounts, size: 30), label: "Help"),

        ],
      ),
    );
  }
}
