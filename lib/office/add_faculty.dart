import 'package:ddukk_attendence/basic_widgets/button.dart';
import 'package:ddukk_attendence/basic_widgets/shadow_textfeild.dart';
import 'package:ddukk_attendence/constants/colors.dart';
import 'package:flutter/material.dart';

class AddFaculty extends StatefulWidget {
  const AddFaculty({super.key});

  @override
  State<AddFaculty> createState() => _AddFacultyState();
}

class _AddFacultyState extends State<AddFaculty> {
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
              'Add Faculty',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16.0,
            ),
            ShadowTextField(
              labelText: 'Enter Full Name',
              prefixIcon: Icons.person,
            ),
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
            SizedBox(height: 30.0),
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
