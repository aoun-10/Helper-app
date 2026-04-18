import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordTextfieldScreen extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final Icon? icon1;
  final TextInputType? keyboardType;

  const PasswordTextfieldScreen({
    super.key,
    this.hintText,
    this.controller,
    this.icon1,
    this.keyboardType,
  });

  @override
  State<PasswordTextfieldScreen> createState() => _PasswordTextfieldScreenState();
}

class _PasswordTextfieldScreenState extends State<PasswordTextfieldScreen> {
  bool _obscureText = true;

  final Icon _eyeOpen = const Icon(Icons.visibility, color: Colors.grey);
  final Icon _eyeClosed = const Icon(Icons.visibility_off, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: Colors.grey,
      cursorHeight: 18.h,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      obscureText: _obscureText,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: widget.hintText!,
        hintStyle: GoogleFonts.manrope(
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFFA4A4A4),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide(color: Colors.grey),
        ),
        prefixIcon: widget.icon1,
        prefixIconColor: Colors.grey,
        suffixIcon: IconButton(
          icon: _obscureText ? _eyeOpen : _eyeClosed,
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
        suffixIconColor: Colors.grey,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide(color: Colors.grey.shade900),
        ),
      ),
    );
  }
}
