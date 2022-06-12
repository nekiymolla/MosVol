import 'package:flutter/material.dart';
import 'package:mosvol/Pages/mainpage.dart';
import 'package:mosvol/Pages/profile.dart';
import 'package:mosvol/Pages/tasks.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {

  var _currentPage=0;

  final _pages = [
    const ProfilePage(),
    const HomePage(),
    const TasksPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pages.elementAt(_currentPage),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF002279),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.accessibility_new_sharp), label: 'Main'),
            BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Tasks'),
          ],
          currentIndex: _currentPage,
          onTap: (int Index){
            setState(() {
              _currentPage = Index;
            });
          },
        ),
      ),
    );
  }
}
