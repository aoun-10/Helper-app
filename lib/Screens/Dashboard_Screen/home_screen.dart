import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Custom_widget/card_widget.dart';
import '../../Custom_widget/text_ widget.dart';
import '../../Custom_widget/textfield.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECEC),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 60.h,left: 20.w),
                child: Container(
                  height: 52.h,
                  width: 52.w,
                  decoration: BoxDecoration(
                    color:Color(0xFFF1EAFF),
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Image.asset("assets/images/Ellipse.png")
                ),
              ),),
              Align(alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 60.h,right: 20.w),
                  child: Container(
                      padding: EdgeInsets.all(10.w),
                      height: 52.h,
                      width: 52.w,
                      decoration: BoxDecoration(
                        color:Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Image.asset("assets/images/bell.png")
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20.h,),
          Row(
            children: [
              Textwidget(
                text1: '',
                text2: 'Find Your\nPerfect Help!',
                text3: '',
              ),
              SizedBox(
                  width: 90.w,
                  height: 89.h,
                  child: Image.asset("assets/images/paperplane.png")
              )
            ],
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
              child: Column(
                children: [
                  Transform.translate(
                    offset: Offset(0, -25),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: SizedBox(
                        height: 45.h,
                        child: TextfieldScreen(
                          controller: TextEditingController(),
                          hintText: "Search...",
                          icon1:  Icon(Icons.search_rounded),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "My Jobs",
                        style: GoogleFonts.manrope(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding:  EdgeInsets.only(right: 8.w,left: 22.w),
                      children: [

                        SizedBox(
                          height: 171.h,
                          child: CardWidget(
                            bgColor: Color(0xFFADCDCD),
                            image1: "assets/images/electricity.png",
                            text: "Active",
                          ),
                        ),

                        SizedBox(height: 15.h),

                        SizedBox(
                          height: 171.h,
                          child: CardWidget(
                            bgColor: Color(0xFFFDF7EA),
                            image: "assets/images/shoppingbucket.png",
                            text: "InActive",
                          ),
                        ),

                        SizedBox(height: 20.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
