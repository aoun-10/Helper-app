import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Custom_widget/Email.dart';
import 'package:helper_app/Custom_widget/text_%20widget.dart';
import 'package:helper_app/Custom_widget/textfield.dart';
import 'package:helper_app/Screens/Sign_InScreen/sign_in_screen.dart';
import 'package:helper_app/Screens/Sign_InScreen/verify_screen.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  List<bool> isSelected = [true, false];
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
                                builder: (context)=>SignInScreen()
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
                              // border: BoxBorder.all(color: Colors.grey)
                          ),
                          child: Image.asset("assets/icons/Vector2.png")
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 70.h,left: 20.w),
                  child: Text("Forgot Password",style: GoogleFonts.manrope(
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
              text2: 'Verify Your Identity',
              text3: '',
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Enter email to find your account",style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w300,fontSize: 16.sp),
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            CustomSwitch1(),
            SizedBox(height: 25.h,),
            SizedBox(width: 310.w,height: 45.h,
                child: TextfieldScreen(
                  controller: TextEditingController(),
                  hintText: "Email Address",
                )
            ),
            SizedBox(height: 20.h,),
            ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: Size(315.w, 55.h)
            ),
                onPressed: (){
              Navigator.push(
                  context,MaterialPageRoute(
                  builder: (context)=>VerifyScreen())
              );
                }, child:Text("Find Your Account",style: GoogleFonts.manrope(
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
