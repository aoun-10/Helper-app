import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Custom_widget/image_picker.dart';
import 'package:helper_app/Custom_widget/textfield.dart';
import 'package:helper_app/Screens/Dashboard_Screen/home_state.dart';
class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

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
                                builder: (context)=>HomeStateScreen()
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
                          child: Image.asset("assets/icons/Vector2.png",color: Color(0xFF2A8DA7),)
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 70.h,left: 20.w),
                  child: Text("Edit Profile",style: GoogleFonts.manrope(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              width: 201.w,
              height: 201.h,
              child: CustomImagePicker(
                radius: 100.r,
                defaultImage: "assets/images/image100.png",
              ),
            ),
            SizedBox(height: 20.h,),
            SizedBox(width: 315.w,height: 45.h,
                child: TextfieldScreen(
                  controller: TextEditingController(),
                  hintText: "Rehan R",
                )
            ),
            SizedBox(height: 8.h,),
            SizedBox(width: 315.w,height: 45.h,
                child: TextfieldScreen(
                  controller: TextEditingController(),
                  hintText: "Example@mail.com",
                )
            ),
            SizedBox(height: 30.h,),
            ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: Size(315.h, 55.w)
            ),
                onPressed: (){},
                child:Text("Update",style: GoogleFonts.manrope(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: Colors.white
                ),)
            ),
          ],
        ),
      ),
    );
  }
}
