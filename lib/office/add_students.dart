import 'dart:io';

import 'package:ddukk_attendence/basic_widgets/button.dart';
import 'package:ddukk_attendence/basic_widgets/shadow_textfeild.dart';
import 'package:ddukk_attendence/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddStudents extends StatefulWidget {
  const AddStudents({super.key});

  @override
  State<AddStudents> createState() => _AddStudentsState();
}

class _AddStudentsState extends State<AddStudents> {
  final ImagePicker _picker = ImagePicker();
  File? _image;
  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: primaryColor,
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40),
              Text(
                'Add Students',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.fromLTRB(48, 0, 48, 0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: _image != null ? null : Color(0xFFF0F0F0),
                    borderRadius: BorderRadius.circular(10),
                    border: _image != null
                        ? Border.all(color: secondaryColor, width: 2.0)
                        : null,
                  ),
                  child: _image != null
                      ? Image.file(_image!, fit: BoxFit.fitWidth)
                      : Center(
                          child: Icon(
                            Icons.image,
                            size: 100,
                            color: secondaryColor,
                          ),
                        ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _pickImage,
                child: Text(
                  'Choose from Gallery',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
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
      ),
    ));
  }
}
