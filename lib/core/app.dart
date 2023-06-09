import 'package:flutter/material.dart';

import 'package:student_clean_arc/view/login.dart';
import 'package:student_clean_arc/view/register.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/registerRoute':(context) => const Register(),
      },
    );
  }
}
