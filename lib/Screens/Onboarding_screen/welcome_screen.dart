import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Custom_widget/text_%20widget.dart';
import 'onboarding_screen_1.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40.h,),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 12.h,right: 20.w),
                child: Container(
                    padding: EdgeInsets.all(10.w),
                    height: 52.h,
                    width: 52.w,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1EAFF),
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    child: Image.asset("assets/icons/Vector.png")
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            Row(
              children: [
                Textwidget(
                  text1: 'Earn ',
                  text2: 'More\nOr Get Help\n',
                  text3: 'Nearby',
                ),
                SizedBox(width: 12.w,),
                SizedBox(
                    width: 50.w,
                    height: 90.h,
                    child: Image.asset("assets/icons/circle.png")
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 17.w,),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("A smarter way to post local\n"
                    "tasks or earn from nearby\n"
                    "jobs",style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w300,fontSize: 17.sp),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom:250.h,left: 20.w),
                  child: Align(alignment: Alignment.topLeft,
                    child: IconButton(style: IconButton.styleFrom(
                      backgroundColor: Colors.black,
                      side: BorderSide(strokeAlign: 5.r)
                    ),
                        onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>Onboarding1())
                      );
                        },
                        icon:Icon(Icons.arrow_forward,
                          size:35.sp,
                          color: Colors.white,
                        )),
                  ),
                ),
                Align(alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top:10.h,left:50.w,bottom:2.h, ),
                    child: SizedBox(height:350.h,width:224.w ,
                        child: Image.asset("assets/images/boy.png")),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
