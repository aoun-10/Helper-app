import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  final Color? bgColor;
  final String? statusText;
  final Color? statusColor;
  final String image;
  final String image1;
  final String text;

  const CardWidget({
    super.key,
    this.bgColor,
    this.statusText,
    this.statusColor,
    this.image = "",
    this.image1 = "",
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(right: 15.w),
      child: Container(
        padding: EdgeInsets.only(right: 12.w,left: 12.w,top: 12.h,bottom: 6.h),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25.r,
                  backgroundColor: Colors.white,
                  child: SizedBox(width: 35.w,height: 35.h,
                      child:  image.isNotEmpty
                          ? Image.asset(image)
                          :Image.asset("assets/images/shoppingbags.png"),
                  ),
                ),
                SizedBox(width: 15.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Shopping Delivery",
                          style: GoogleFonts.manrope(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                              size: 16.sp, color: Colors.grey),
                          SizedBox(width: 5.w),
                          Text("Road123, colony Z",
                              style: GoogleFonts.manrope(
                                  color: Colors.grey,
                              )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                SizedBox(width: 18.w,height: 18.h,
                    child: Image.asset("assets/images/stopwatch.png")
                ),
                SizedBox(width: 5.w),
                Text("12 min ago",style: GoogleFonts.manrope(
                    color: Colors.black,fontSize: 8.sp,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(width: 15.w),
                Icon(Icons.group, size: 18.sp, color: Colors.purple),
                SizedBox(width: 5.w),
                Text("50k + Applied",style: GoogleFonts.manrope(
                    color: Colors.black,fontSize: 8.sp,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(width: 50.w,),
                Container(
                  width: 71.w,height: 29.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFD7EBDC),
                    borderRadius: BorderRadius.circular(12.r)
                  ),
                  child: Row(
                    children: [
                      image1.isNotEmpty?
                      Image.asset(image1)
                          :Image.asset("assets/images/electricity.png"),
                      Text(text,style: GoogleFonts.manrope(
                      color: Colors.black,fontSize: 8.sp,
                      fontWeight: FontWeight.bold))
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 9.h,left:160.w ),
              child: ElevatedButton(
                onPressed: () {} ,
                style: ElevatedButton.styleFrom(
                  backgroundColor:Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)
                  )
                ),
                child: Text("See Details",style: GoogleFonts.manrope(
                  color: Colors.white,fontSize: 12.sp,
                  fontWeight: FontWeight.bold
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}