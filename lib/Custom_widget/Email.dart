import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomSwitch1 extends StatefulWidget {
  const CustomSwitch1({super.key});

  @override
  State<CustomSwitch1> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch1> {

  bool isOn = true;

  void toggle() {
    setState(() {
      isOn = !isOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggle,
      child: Container(
        width: 250.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: const Color(0xffEDEDED),
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Stack(
          children: [

            AnimatedAlign(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              alignment:
              isOn ? Alignment.centerLeft : Alignment.centerRight,
              child: Container(
                width: 140.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      "Email",
                      style: GoogleFonts.manrope(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: isOn ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "Phone",
                      style: GoogleFonts.manrope(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: !isOn ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}