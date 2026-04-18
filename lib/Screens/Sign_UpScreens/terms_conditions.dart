import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Screens/Sign_UpScreens/sign_up_screen.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 70.h,left:20.w),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context)=>SignUpScreen()
                              )
                          );
                        },
                        child: Container(
                            padding: EdgeInsets.all(18.w),
                            height: 52.h,
                            width: 52.w,
                            decoration: BoxDecoration(
                              color:Color(0xFFE4F9FF),
                              borderRadius: BorderRadius.circular(150.r),
                                //border: BoxBorder.all(color: Colors.grey)
                            ),
                            child: Image.asset("assets/icons/Vector2.png")
                        ),
                      ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 70.h,left: 20.w),
                  child: Text("Terms & Conditions",style: GoogleFonts.manrope(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              height: 600.h,width: 335.w,
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                  "Curabitur in mattis ante. Nam ac diam quis dolor lobortis"
                  "euismod et eget nunc. Curabitur ullamcorper, nibh vel ultricies commodo,"
                  " libero tortor viverra velit, sed elementum nunc purus sed ante. Donec sit"
                  " amet bibendum tellus. Integer vehicula est quis mauris euismod, malesuada "
                  "c  Lorem ipsum dolor sit amet"
                  ", consectetur adipiscing elit. Curabitur in mattis ante."
                  " Nam ac diam quis dolor lobortis euismod et eget nunc. "
                  "Curabitur ullamcorper, nibh vel ultricies commodo, libero"
                  " tortor viverra velit, sed elementum nunc purus sed ante. Donec "
                  "sit amet bibendum tellus. Integer vehicula est quis mauris euismod, malesuada"
                  " c Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in mattis"
                  " ante. Nam ac diam quis dolor lobortis euismod et eget nunc. Curabitur ullamcorper,"
                  " nibh vel ultricies commodo, libero tortor viverra velit, sed elementum nunc purus"
                  " sed ante. Donec sit amet bibendum tellus."
                  " Integer vehicula est quis mauris euismod, malesuada cLorem ",
                style: GoogleFonts.manrope(
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
