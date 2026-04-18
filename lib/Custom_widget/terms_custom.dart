import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsPrivacyCheckbox extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;
  final VoidCallback? onTermsTap;
  final VoidCallback? onPrivacyTap;

  const TermsPrivacyCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.onTermsTap,
    this.onPrivacyTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          shape: CircleBorder(),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity(horizontal: -4.w, vertical:-4.h
          ),
        ),
        Flexible(
          child: RichText(
            text: TextSpan(
              style: GoogleFonts.manrope(
                fontSize: 12.sp,
                color: Colors.black,
              ),
              children: [
                const TextSpan(text: "I agree with all "),
                WidgetSpan(
                  child: GestureDetector(
                    onTap: onTermsTap,
                    child: Text(
                      "Terms & Conditions",
                      style: GoogleFonts.manrope(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                const TextSpan(text: " and "),
                WidgetSpan(
                  child: GestureDetector(
                    onTap: onPrivacyTap,
                    child: Text(
                      "Privacy Policy",
                      style: GoogleFonts.manrope(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
