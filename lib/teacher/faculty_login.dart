import 'package:ddukk_attendence/basic_widgets/button.dart';
import 'package:ddukk_attendence/basic_widgets/textfield.dart';
import 'package:ddukk_attendence/constants/colors.dart';
import 'package:flutter/material.dart';

class FacultyLogin extends StatefulWidget {
  const FacultyLogin({super.key});

  @override
  State<FacultyLogin> createState() => _FacultyLoginState();
}

class _FacultyLoginState extends State<FacultyLogin> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Faculty Login',
                  style: TextStyle(
                    fontSize: 24,
                    color: black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25),
                CustomTextField(labelText: 'Email', prefixIcon: Icons.email),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelStyle: TextStyle(color: ash),
                      iconColor: ash,
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: ash),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ash),
                          borderRadius: BorderRadius.circular(30))),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: () {
                          print('forgot password');
                        },
                        child: Text(
                          'Forgot your password',
                          style: TextStyle(color: ash),
                        ))
                  ],
                ),
                SizedBox(height: 30),
                CustomElevatedButton(onPressed: () {}, buttonText: 'Login'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
