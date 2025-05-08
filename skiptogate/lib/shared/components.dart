import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skiptogate/shared/Colors.dart';

Widget TextFieldModel({
  required String text,
  required IconData prefixIcon,
   IconData? suffixIcon,
  required TextInputType textInputType,


}) =>
    Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextFormField(

        keyboardType: textInputType,
        textAlign: TextAlign.center,
        style: GoogleFonts.manrope(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon, // 👈 Correct usage
            color: primaryColor,
          ),

          hintText: text,
          fillColor: primaryColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: secondColor, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: primaryColor, width: 2.0),
          ),
        ),
      ),
    );



