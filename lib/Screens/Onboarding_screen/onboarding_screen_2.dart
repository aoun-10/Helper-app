import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Screens/Onboarding_screen/selection_screen.dart';
import 'package:helper_app/Screens/Sign_InScreen/sign_in_screen.dart';

import '../../Custom_widget/button.dart';
import '../../Custom_widget/text_ widget.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(height: 25.h,),
            Button(),
            SizedBox(
                width: 320.w,
                height: 320.h,
                child: Image.asset("assets/images/coin.png")),
            Textwidget(
                text1:"Earn ",
                text2:"On Your Own\n",
                text3: "Terms"
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Browse nearby jobs,"
                    " choose what fits\nyou, "
                    "and get paid for helping others",style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w300,fontSize: 17.sp),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left:7.w,top: 85.h),
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
                  padding: EdgeInsets.only(top: 65.h,right:25.w),
                  child: Align(alignment: Alignment.topRight,
                    child: IconButton(style: IconButton.styleFrom(
                        backgroundColor: Colors.black,
                        side: BorderSide(strokeAlign: 5)
                    ),
                        onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context)=>Selection()
                          )
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
