import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Custom_widget/calender_widget.dart';
import 'package:helper_app/Custom_widget/job_screenheading.dart';
import 'package:helper_app/Custom_widget/price_widget.dart';
import 'package:helper_app/Custom_widget/textfield.dart';
import 'package:helper_app/Custom_widget/textwidget.dart';
import 'package:helper_app/Screens/Dashboard_Screen/Job_Screen/post_step2.dart';
import 'package:helper_app/Screens/Dashboard_Screen/Job_Screen/post_step4.dart';

class PostStep3 extends StatelessWidget {
  const PostStep3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 70.h,left:20.w),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=>PostStep2()
                        )
                    );
                  },
                  child: Container(
                      padding: EdgeInsets.all(18.w),
                      height: 52.h,
                      width: 52.h,
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
            SizedBox(height: 15.h,),
            Padding(
              padding: EdgeInsets.only(right: 230.w),
              child: Text(
                "Step 3 of 4",
                style: GoogleFonts.manrope(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF747474),
                ),
              ),
            ),
            SizedBox(height: 13.h),
            Row(children: [
              SizedBox(width: 15.w,),
              Expanded(
                child: Container(
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF2A8DA7),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: Container(
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF2A8DA7),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: Container(
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF2A8DA7),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: Container(
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ),
              SizedBox(width: 15.w,),
            ],),
            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsets.only(right: 195.w),
              child: ScreenHeading(
                  title: "Schedule",
                  subtitle: "Provide the details"
              ),
            ),
            Container(
              width: 330.w,height: 45.h,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child:PriceSelector(),
            ),
            SizedBox(height: 10.h,),
            SizedBox(width: 315.w,height: 45.h,
                child: TextfieldScreen(
                  controller: TextEditingController(),
                  hintText: "Amount...",
                  keyboardType: TextInputType.number,
                )
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: EdgeInsets.only(right: 250.w),
              child: CustomText(
                  text: "Schedule",
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10.h,),
            Container(
              width: 330.w,height: 45.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30.r),
              ),child: SchedulePicker(),
            ),
            SizedBox(height: 195.h,),
            ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: Size(315.w, 55.h)
            ),
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context)=>PostStep4())
                  );
        
                }, child:Text("Next",style: GoogleFonts.manrope(
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
