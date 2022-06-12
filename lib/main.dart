import 'package:flutter/material.dart';
import 'package:mosvol/Pages/Authorization.dart';
import 'package:mosvol/Pages/bottomnavPage.dart';
import 'package:mosvol/Pages/mainpage.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context)=> AuthorizationPage(),
    '/main':(context) => BottomNavPage(),
  },
));



