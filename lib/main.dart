import 'package:ddukk_attendence/constants/colors.dart';
import 'package:ddukk_attendence/office/add_faculty.dart';
import 'package:ddukk_attendence/office/add_students.dart';
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
      initialRoute: '/addStudent',
      routes: {
        '/facultyLogin': (context) => FacultyLogin(),
        '/userLogin': (context) => UserLogin(),
        '/addFaculty': (context) => AddFaculty(),
        '/addStudent': (context) => AddStudents(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: black),
        useMaterial3: true,
        scaffoldBackgroundColor: primaryColor,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
    );
  }
}
