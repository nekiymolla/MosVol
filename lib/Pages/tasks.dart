import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  Widget _organisations(String label, Color color) {
    return Center(
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: color)),
      ),
    );
  }
  Widget _peopleTasks(String label, Color color) {
    return Center(
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: color)),
      ),
    );
  }
  Widget _favoriteTasks(String label, Color color) {
    return Center(
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: color)),
      ),
    );
  }

  Widget _containerPeople(int index, Icon icon, String label) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF002279).withOpacity(0.8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 0,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        width: 350,
        height: 150,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconTheme(
                data: const IconThemeData(
                  color: Colors.white,
                  size: 40,
                ),
                child: icon,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _peopleList() {
    return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              _containerPeople(1, const Icon(Icons.shopping_bag), 'Помощь с сумками'),
              const SizedBox(width: 12),
              _containerPeople(2, const Icon(Icons.restore_from_trash), 'Вынести старую мебель'),
            ],
          ),
        ));
  }

  Widget _containerOrg(int index, Icon icon, String label) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF002279).withOpacity(0.8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 0,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        width: 350,
        height: 150,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconTheme(
                data: const IconThemeData(
                  color: Colors.white,
                  size: 40,
                ),
                child: icon,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _organisationList() {
    return Container(
        child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          _containerOrg(1, const Icon(Icons.pets), 'Помощь бездомным животным'),
          const SizedBox(width: 12),
          _containerOrg(2, const Icon(Icons.bloodtype), 'Пункт приема крови'),
        ],
      ),
    ));
  }
  Widget _containerFavorite(int index, Icon icon, String label){
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF002279).withOpacity(0.8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 0,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        width: 350,
        height: 150,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconTheme(
                data: const IconThemeData(
                  color: Colors.white,
                  size: 40,
                ),
                child: icon,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _favoriteList() {
    return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              _containerOrg(1, const Icon(Icons.pets), 'Помощь бездомным животным'),
              const SizedBox(width: 12),
              _containerOrg(2, const Icon(Icons.bloodtype), 'Пункт приема крови'),
            ],
          ),
        ));
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Frame.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30),
            _organisations('Заявки организаций', const Color(0xFF002279)),
            _organisationList(),
            _peopleTasks('Заявки пользователей', const Color(0xFF002279)),
            _peopleList(),
            _favoriteTasks('Избранное', const Color(0xFF002279)),
            _favoriteList(),
          ],
        ),
      ),
    ));
  }
}
