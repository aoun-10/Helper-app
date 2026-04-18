import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:helper_app/Custom_widget/card_widget.dart';
import 'package:helper_app/Custom_widget/textwidget.dart';

class JobPage extends StatelessWidget {
  const JobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECEC),
      body: Column(
        children: [
          Align(alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 60.h,left: 20.w),
              child:CustomText(
                text: "My Jobs",
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              )
            ),
          ),
          SizedBox(height: 20.h,),
          Expanded(
            child: Container(
              height: 563.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  topRight: Radius.circular(25.r),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20.h,),
                    Padding(
                      padding: EdgeInsets.only(right: 8.w,left: 22.w),
                      child: SizedBox(
                        height: 171.h,
                        child: CardWidget(
                          bgColor: Color(0xFFADCDCD),
                          image1: "assets/images/electricity.png",
                          text: "Active",
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 15.h),
                    
                    Padding(
                      padding: EdgeInsets.only(right: 8.w,left: 22.w),
                      child: SizedBox(
                        height: 171.h,
                        child: CardWidget(
                          bgColor: Color(0xFFFDF7EA),
                          image: "assets/images/shoppingbucket.png",
                          text: "InActive",
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}