import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Custom_widget/text_%20widget.dart';
import 'package:helper_app/Custom_widget/text_field.dart';
import 'package:helper_app/Screens/Sign_InScreen/change_password.dart';
import 'package:helper_app/Screens/Sign_InScreen/forget_password.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                                builder: (context)=>ForgetPassword()
                            )
                        );
                      },
                      child: Container(
                          padding: EdgeInsets.all(18.w),
                          height:52.h,
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
                  child: Text("Verify",style: GoogleFonts.manrope(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              width: 149.w,height: 201.h,
              child: Image.asset("assets/images/cover.png"),
            ),
            SizedBox(height: 35.h,),
            Textwidget(
              text1: '',
              text2: 'Enter Code',
              text3: '',
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Enter Code sent to your mail",style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w300,fontSize: 16.sp),
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Row(
              spacing: 9,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 46.w,height: 48.h,
                    child: Textfield(
                    )
                ),
                SizedBox(width: 46.w,height: 48.h,
                    child: Textfield(
                    )
                ),
                SizedBox(width: 46.w,height: 48.h,
                    child: Textfield(
                    )
                ),
                SizedBox(width: 46.w,height: 48.h,
                    child: Textfield(
                    )
                ),
                SizedBox(width: 46.w,height: 48.h,
                    child: Textfield(
                    )
                ),
                SizedBox(width: 46.w,height: 48.h,
                    child: Textfield(
                    )
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: Size(315.w, 55.h)
        
            ),
                onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context)=>ChangePassword())
              );
                }, child:Text("Verify",style: GoogleFonts.manrope(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: Colors.white
                ),)
            ),
          ],
        ),
      ),
    );
  }
}
