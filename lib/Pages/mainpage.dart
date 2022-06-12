import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    Widget buildCard(int index, Icon icon, String label) {
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
          width: 150,
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

    Widget _formHome() {
      return Container(
          child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            buildCard(1, const Icon(Icons.qr_code), 'Считать QR - код'),
            const SizedBox(width: 12),
            buildCard(2, const Icon(Icons.newspaper), 'Последние новости'),
            const SizedBox(width: 12),
            buildCard(
                3, const Icon(Icons.accessibility_new), 'Волонтёр месяца'),
            const SizedBox(width: 12),
            buildCard(4, const Icon(Icons.task), 'Недавние задания'),
            const SizedBox(width: 12),
            buildCard(5, const Icon(Icons.person), 'Просмотр профиля'),
            const SizedBox(width: 12),
          ],
        ),
      ));
    }

    Widget _listCard(int index, Icon icon, String label, Color color) {
      return InkWell(
        onTap: () {
          //Navigator.pushNamed(context, 'navigator');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 0,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          width: 400,
          height: 150,
          child: Center(
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconTheme(
                  data: const IconThemeData(
                    color: Colors.white,
                    size: 50,
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
                            fontSize: 24,
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

    Widget _TeaxMain(String label, Color color){
      return Container(
        child: Center(
          child:Text(label, style: GoogleFonts.montserrat(textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),),
        ),
      );
    }

    Widget _mainBody() {
      return Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _TeaxMain('Главная', const Color(0xFF002279)),
                const SizedBox(height: 20),
                _listCard(1, const Icon(Icons.sos), 'Срочная помощь',
                    Colors.red.withOpacity(0.8)),
                const SizedBox(height: 30),
                _listCard(
                  2,
                  const Icon(Icons.plus_one),
                  'Создать заявку на помощь',
                  const Color(0xFF002279).withOpacity(0.8),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ));
    }

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
              const SizedBox(height: 15),
              _formHome(),
              _mainBody(),
            ],
          ),
        ),
      ),
    );
  }
}
