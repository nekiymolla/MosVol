import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Widget _photo(String name) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/Avatar.png'),
          radius: 100,
        ),
      ],
    ));
  }

  Widget _bodyContainer() {
    return Container(
        height: 400,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: ListView(
          scrollDirection: Axis.vertical,

          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(height: 0),
                Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFD0EEFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                          const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Иван',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        textAlign: TextAlign.center,
                      ),
                    )),
                const SizedBox(height: 20),
                Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFD0EEFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                          const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Иванов',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        textAlign: TextAlign.center,
                      ),
                    )),
                const SizedBox(height: 20),
                Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFD0EEFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                          const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(Icons.accessibility_new_sharp, color: Colors.red,),
                        const SizedBox(width: 20),
                        Center(
                          child: Text(
                            'История помощи',
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )
                ),
                const SizedBox(height: 20),
                Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFD0EEFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text('Выход', style: GoogleFonts.montserrat(textStyle: const TextStyle(fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold)),textAlign: TextAlign.center,),
                    )
                ),
              ],
            ),

          ],

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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _photo('Иван'),
                const SizedBox(height: 10),
                _bodyContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
