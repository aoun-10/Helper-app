import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;
  final String? text;
  final bool showTermsLine;
  final VoidCallback? termsTap;
  final VoidCallback? privacyTap;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.text,
    this.showTermsLine = false,
    this.termsTap,
    this.privacyTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            onChanged(!value);
          },
          child: Container(
            width: 22.w,
            height: 22.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
              color: value ? Colors.black : Colors.transparent,
            ),
            child: value
                ? Icon(Icons.check, size: 16.sp, color: Colors.white)
                : null,
          ),
        ),
        SizedBox(width: 7.w),
        Flexible(
          child: showTermsLine
              ? RichText(
            text: TextSpan(
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w500,
                fontSize: 11.sp,
                color: Colors.black,
              ),
              children: [
                const TextSpan(text: "I agree with all "),
                WidgetSpan(
                  child: GestureDetector(
                    onTap: termsTap,
                    child: Text(
                      "Terms & Conditions",
                      style: GoogleFonts.manrope(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                const TextSpan(text: " and "),
                WidgetSpan(
                  child: GestureDetector(
                    onTap: privacyTap,
                    child: Text(
                      "Privacy Policy",
                      style: GoogleFonts.manrope(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
              : Text(
            text ?? "",
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w500,
              fontSize: 11.sp,
            ),
          ),
        ),
      ],
    );
  }
}
