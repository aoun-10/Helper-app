import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Custom_widget/text_%20widget.dart';
import 'package:helper_app/Screens/Sign_InScreen/sign_in_screen.dart';

import '../../Custom_widget/button.dart';
import 'onboarding_screen_2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(height: 25.h,),
            Button(),
            SizedBox(width: 450.w,height: 330.h,
                child: Image.asset("assets/images/handshake.png")),
            Textwidget(
                text1:"Local ",
                text2:"Help,When\nYou",
                text3: " Need It"
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Post everyday tasks and connect with\n"
                    "trusted people in your area ,quickly\n"
                    "and safely.",style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w300,fontSize: 17.sp),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6.w,top: 50.h),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>SignInScreen())
                          );
                        }, child:
                    Text("Skip",
                      style: GoogleFonts.manrope(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),)
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 55.h,right:25.w),
                  child: Align(alignment: Alignment.topRight,
                    child: IconButton(style: IconButton.styleFrom(
                        backgroundColor: Colors.black,
                        side: BorderSide(strokeAlign: 5)
                    ),
                        onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:
                          (context)=>Onboarding2())
                      );
                        },
                        icon:Icon(Icons.arrow_forward,
                          size:35.sp,
                          color: Colors.white,
                        )),
                  ),
                )
              ],
            ),
            SizedBox(height: 30.h,)
          ],
        ),
      ),
    );
  }
}
