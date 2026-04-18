import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Custom_widget/password_textfeild.dart';
import 'package:helper_app/Custom_widget/text_%20widget.dart';
import 'package:helper_app/Custom_widget/textfield.dart';
import 'package:helper_app/Screens/Dashboard_Screen/home_state.dart';
import 'package:helper_app/Screens/Sign_InScreen/sign_in_screen.dart';
import 'package:helper_app/Screens/Sign_UpScreens/privacy_policy_screen.dart';
import 'package:helper_app/Screens/Sign_UpScreens/terms_conditions.dart';

import '../../Custom_widget/check_buttton.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.h,),
                child: SizedBox(width: 100.w,height: 100.h,
                    child: Image.asset("assets/images/Logo.png")),
              ),
              SizedBox(height: 15.h,),
              Column(
                children: [
                  Textwidget(
                    text1: '',
                    text2: "Sign Up",fontWeight:FontWeight.bold,
                    text3: '',
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w,),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Sign Up using your details",
                        style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w400,fontSize: 14.sp),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h,),
              SizedBox(width: 315.w,height: 45.h,
                  child: TextfieldScreen(
                    controller: TextEditingController(),
                    hintText: "Username",
                  )
              ),
              SizedBox(height: 5.h,),
              SizedBox(width: 315.w,height: 45.h,
                  child: TextfieldScreen(
                    controller: TextEditingController(),
                    hintText: "Email Address",
                  )
              ),
              SizedBox(height: 5.h,),
              SizedBox(width: 315.w,height: 45.h,
                  child: PasswordTextfieldScreen(
                    controller: TextEditingController(),
                    hintText: "Password",
                  )
              ),
              SizedBox(height: 5.h,),
              SizedBox(width: 315.w,height: 45.h,
                  child: PasswordTextfieldScreen(
                    controller: TextEditingController(),
                    hintText: "Confirm Password",
                  )
              ),
              SizedBox(height: 12.h,),
              Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left:15.w),
                  child: CustomCheckbox(
                    value: ischecked,
                    onChanged: (value) {
                      setState(() {
                        ischecked = value;
                      });
                    },
                    privacyTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context)=>PrivacyPolicyScreen()
                          )
                      );
                    },
                    termsTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context)=>TermsConditions()
                          )
                      );
                    },
                    showTermsLine: true,
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  fixedSize: Size(315.w, 55.h)

              ),
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context)=>HomeStateScreen())
                    );
                  }, child:Text("Sign Up",style: GoogleFonts.manrope(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      color: Colors.white
                  ),)
              ),
              SizedBox(height: 12.h,),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text("Or",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA4A4A4)
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      endIndent: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(10.w),
                      height: 52.h,
                      width: 52.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.r),
                          border: BoxBorder.all(color: Colors.grey.shade300)
                      ),
                      child: Image.asset("assets/images/Google.png")
                  ),
                  SizedBox(width: 12.w,),
                  Container(
                      padding: EdgeInsets.all(10.w),
                      height: 52.h,
                      width: 52.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.r),
                          border: BoxBorder.all(color: Colors.grey.shade300)
                      ),
                      child: Image.asset("assets/images/Apple.png")
                  ),
                ],
              ),
              SizedBox(height:10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp
                  ),),
                  TextButton(
                      onPressed:(){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context)=>SignInScreen())
                        );
                      },
                      child: Text("Sign In",style: GoogleFonts.manrope(
                          fontSize: 14.sp,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          decorationThickness: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),)
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
