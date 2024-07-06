import 'package:ddukk_attendence/basic_widgets/button.dart';
import 'package:ddukk_attendence/basic_widgets/shadow_textfeild.dart';
import 'package:ddukk_attendence/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddFaculty extends StatefulWidget {
  const AddFaculty({super.key});

  @override
  State<AddFaculty> createState() => _AddFacultyState();
}

class _AddFacultyState extends State<AddFaculty> {
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
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40),
              Text(
                'Add Faculty',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              // _image == null ? Text('No image selected.') : Image.file(_image!),
              SizedBox(height: 16.0),
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
      ),
    ));
  }
}
