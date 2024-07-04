import 'package:ddukk_attendence/teacher/faculty_login.dart';
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
          '/facultyLogin': (context) => FacultyLogin(),
          '/userLogin': (context) => UserLogin(),
        });
  }
}
