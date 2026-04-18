import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Screens/Sign_InScreen/sign_in_screen.dart';
import '../../Custom_widget/text_ widget.dart';

class Selection extends StatefulWidget {
  const Selection({super.key});

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  bool isPostJob = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 90.h),
            Row(
              children: [
                Textwidget(
                  text1: '',
                  text2: 'What are you\n',
                  text3: ' looking for?',
                ),
                SizedBox(width: 12.w),
                SizedBox(
                  width: 50.w,
                  height: 90.h,
                  child: Image.asset("assets/icons/circle.png"),
                ),
              ],
            ),

            SizedBox(height: 30.h),

            SizedBox(
              width: 284.w,
              height: 286.h,
              child: Image.asset("assets/images/Circle2.png"),
            ),

            SizedBox(height: 40.h),

            Padding(
              padding: EdgeInsets.only(left: 25.w, right: 25.w),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                        isPostJob ? Colors.black : Colors.white,
                        fixedSize: Size(100.w, 39.h),
                      ),
                      onPressed: () {
                        setState(() {
                          isPostJob = true;
                        });
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/plus.png",
                            width: 20.w,
                            height: 20.h,
                            color:
                            isPostJob ? Colors.white : Colors.black,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            "Post A Job!",
                            style: GoogleFonts.manrope(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: isPostJob
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 13.w),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                        isPostJob ? Colors.white : Colors.black,
                        fixedSize: Size(149.w, 39.h),
                      ),
                      onPressed: () {
                        setState(() {
                          isPostJob = false;
                        });
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/search.png",
                            width: 20.w,
                            height: 20.h,
                            color:
                            isPostJob ? Colors.black : Colors.white,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            "Find Work",
                            style: GoogleFonts.manrope(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: isPostJob
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 35.h),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: Size(315.w, 55.h),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                );
              },
              child: Text(
                "Continue",
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}