import 'package:ddukk_attendence/teacher/teacher_login.dart';
import 'package:ddukk_attendence/user/user_login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/userLogin',
        routes: {
          '/admLogin': (context) => TeacherLogin(),
          '/userLogin': (context) => UserLogin(),
        });
  }
}
