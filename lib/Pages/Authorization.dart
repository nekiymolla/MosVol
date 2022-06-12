import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mosvol/Pages/mainpage.dart';

class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({Key? key}) : super(key: key);

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Widget _button(String text,) {
      return RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        splashColor: Colors.black,
        highlightColor: const Color(0xFF532474),
        color: const Color(0xFF71C0EC),
        child: Text(
          text,
          style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          )),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/main');
        },
      );
    }

    Widget _logo() {
      return Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Container(
          child: Align(
            child: Text(
              'Авторизация',
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF002279))),
            ),
          ),
        ),
      );
    }
    Widget _textundo() {
      return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          child: Align(
            child: Text(
              'Войдите и начните делать мир лучше! :)',
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF002279))),
            ),
          ),
        ),
      );
    }

    Widget _input(String hint, TextEditingController controller, bool obscure) {
      return Container(
        height: 40,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        alignment: Alignment.center,
        child: TextField(
            cursorColor: Colors.black,
            controller: controller,
            obscureText: obscure,
            style: const TextStyle(fontSize: 14, color: Color(0xFF49BDB0)),
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFD0EEFF),
                hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
                hintText: hint,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.black54, width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.white54, width: 1)))),
      );
    }

    Widget _form(String label, void func()) {
      return Container(
        height: 200,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 20),
              child: _input('E-mail', _emailController, false),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: _input('Password', _passwordController, true),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
            ),
            _button('Login'),
          ],
        ),
      );
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
              _logo(),
              _textundo(),
              const SizedBox(height: 20),
              _form('LOGIN',(){}),
            ],
          ),
        ),
      ),
    );
  }
}
