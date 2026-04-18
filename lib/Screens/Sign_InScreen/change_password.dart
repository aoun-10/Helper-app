import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Custom_widget/password_textfeild.dart';
import 'package:helper_app/Custom_widget/text_%20widget.dart';
import 'package:helper_app/Screens/Dashboard_Screen/home_state.dart';
import 'package:helper_app/Screens/Sign_InScreen/sign_in_screen.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

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
                              //border: BoxBorder.all(color: Colors.grey)
                          ),
                          child: Image.asset("assets/icons/Vector2.png")
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 70.h,left: 20.w),
                  child: Text("Change Password",style: GoogleFonts.manrope(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              width: 240.w,height: 240.h,
              child: Image.asset("assets/images/lock.png"),
            ),
            SizedBox(height: 20.h,),
            Textwidget(
              text1: '',
              text2: 'Change Password',
              text3: '',
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
            SizedBox(height: 35.h,),
            ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: Size(315.w, 55.h)

            ),
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context)=>HomeStateScreen())
                  );
                }, child:Text("Change",style: GoogleFonts.manrope(
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
