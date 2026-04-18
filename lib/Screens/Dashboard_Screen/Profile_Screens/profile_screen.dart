import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Custom_widget/textwidget.dart';
import 'package:helper_app/Custom_widget/toogle_button.dart';
import 'package:helper_app/Screens/Dashboard_Screen/Profile_Screens/edit_profile.dart';
import 'package:helper_app/Screens/Sign_InScreen/change_password.dart';
import 'package:helper_app/Screens/Sign_InScreen/sign_in_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBody: true,
      //extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFFEDECEC),
      body: Column(
        children: [
          Align(alignment: Alignment.topLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 60.h,left: 20.w),
                child:CustomText(
                  text: "Profile Screen",
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                )
            ),
          ),
          SizedBox(height: 20.h,),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  topRight: Radius.circular(25.r),
                ),
              ),
              child: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.89,
                  child: Column(
                    children: [
                      SizedBox(height: 20.h,),
                      SizedBox(width: 121.w,height: 121.h,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.shade100,
                                blurRadius: 6,
                                spreadRadius: 1,
                                offset: Offset(2, 4),
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 40.r,
                            backgroundImage: AssetImage("assets/images/Kaitlyn1.png"),
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h,),
                      CustomText(
                        text:"Henry wick",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        text: "Exmple@mail.com",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF9B9B9B),
                      ),
                      ElevatedButton(style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          fixedSize: Size(158.w, 45.h)

                      ),
                          onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context)=>EditProfile())
                        );
                          },
                          child:Row(
                            children: [
                              SizedBox(width: 6.w,),
                              SizedBox(width:16.w,height: 16.h,
                                  child: Image.asset("assets/icons/pencil.png")),
                              SizedBox(width: 9.w,),
                              Text("Edit Profile",style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                  color: Colors.white
                              ),),
                            ],
                          )
                      ),
                      SizedBox(height: 8.h,),
                      Profile1(text: 'Change Password',
                      callback: () {
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context)=>ChangePassword())
                        );
                      },),
                      SizedBox(height: 8.h,),
                      Profile1(text: 'Location                ',
                        image: "assets/icons/location.png",
                        showSwitch: true,
                      ),
                      SizedBox(height: 8.h,),
                      Profile1(text: 'Wallet                    ',
                        image: "assets/icons/wallet.png",),
                      SizedBox(height: 8.h,),
                      Profile1(text: 'Switch to Worker ',
                        image: "assets/icons/worker.png",),
                      SizedBox(height: 8.h,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize:  Size(320.w, 50.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            side:BorderSide(color: Colors.red,),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context)=>SignInScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icons/logout.png", width: 23.w, height: 23.h),
                            SizedBox(width: 10.w),
                            Text(
                              "Logout",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w700,
                                fontSize: 15.sp,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Profile1 extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback? callback;
  final bool showSwitch;

  const Profile1({
    super.key,
    this.image = "",
    required this.text,
    this.callback,
    this.showSwitch = false,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        width: 334.w,
        height: 54.h,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Container(
                width: 34.w,
                height: 34.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFF2A8DA7)),
                ),
                child: Center(
                  child: image.isNotEmpty
                      ? Image.asset(image, width: 18.w, height: 18.h)
                      : Image.asset("assets/images/lock.png", width: 18.w, height: 18.h),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            CustomText(
              text: text,
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
              color: const Color(0xFF777777),
            ),
            Spacer(),
            showSwitch
                ? Padding(
                  padding: EdgeInsets.only(right: 15.w),
                  child: CustomSwitch(
                                initialValue: true,
                                onChanged: (value) {
                  print("Switch: $value");
                                },
                              ),
                )
                : Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Image.asset(
                "assets/icons/Vector1.png",
                width: 12.w,
                height: 12.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
