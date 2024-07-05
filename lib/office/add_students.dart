import 'package:ddukk_attendence/basic_widgets/button.dart';
import 'package:ddukk_attendence/basic_widgets/shadow_textfeild.dart';
import 'package:ddukk_attendence/constants/colors.dart';
import 'package:flutter/material.dart';

class AddStudents extends StatefulWidget {
  const AddStudents({super.key});

  @override
  State<AddStudents> createState() => _AddStudentsState();
}

class _AddStudentsState extends State<AddStudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: primaryColor,
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Add Students',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ShadowTextField(
              labelText: 'Student name',
              prefixIcon: Icons.person,
            ),
            SizedBox(height: 16.0),
            ShadowTextField(
                labelText: 'Student ID', prefixIcon: Icons.person_2),
            SizedBox(height: 16.0),
            ShadowTextField(
              labelText: 'Date of Birth',
              prefixIcon: Icons.calendar_today,
            ),
            SizedBox(height: 16.0),
            ShadowTextField(
              labelText: 'Email',
              prefixIcon: Icons.email,
            ),
            SizedBox(height: 16.0),
            ShadowTextField(
              labelText: 'Blood Group',
              prefixIcon: Icons.bloodtype,
            ),
            SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 1),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: TextFormField(
                obscureText: true,
                style: TextStyle(color: ash),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: ash),
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedButton(
                  onPressed: () {},
                  buttonText: 'Add Faculty',
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
