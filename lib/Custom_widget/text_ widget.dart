import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Textwidget extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final Color? color;
  final FontWeight? fontWeight;

  const Textwidget({super.key,
    required this.text1,
    this.color,
    this.fontWeight,
    required this.text2,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(15.0.w),
          child: RichText(
            text: TextSpan(
                text:text1,style: GoogleFonts.manrope(
                fontSize:30.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF2A8DA7)
            ),
                children: [TextSpan(
                    text: text2,style: GoogleFonts.manrope(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                )),
                  TextSpan(
                      text: text3,style: GoogleFonts.manrope(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF2A8DA7)
                  )
                  ),
                ]
            ),
          ),
        ),
      ],
    );
  }
}