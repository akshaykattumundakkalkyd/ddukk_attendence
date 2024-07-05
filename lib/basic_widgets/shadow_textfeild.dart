import 'package:flutter/material.dart';
import 'package:ddukk_attendence/constants/colors.dart';

class ShadowTextField extends StatelessWidget {
  final String labelText;
  final IconData prefixIcon;

  ShadowTextField({required this.labelText, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        style: TextStyle(color: ash),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: ash),
          prefixIcon: Icon(prefixIcon, color: ash),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(30.0),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        ),
      ),
    );
  }
}
