import 'package:flutter/material.dart';
import 'package:tlaxporte_app2/pages/home_page.dart';
import 'package:tlaxporte_app2/pages/login_page.dart';
import 'package:tlaxporte_app2/pages/registration_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {
        'login': (_) => LoginPage(),
        'home': (_) => HomePage(),
        'register': (_) => RegistrationPage()
      },
      initialRoute: 'login',
    );
  }
}
