import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Screens/Dashboard_Screen/home_state.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECEC),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.add, color: Colors.blue),
              onPressed: () {},
            ),
            Expanded(
              child: SizedBox(height: 45.h,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Search...",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.attach_file, color: Colors.blue),
                      onPressed: () {},
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send, color: Colors.blue),
              onPressed: () {},
            ),
          ],
        ),
      ),
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeStateScreen()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(18.w),
                        height: 52.h,
                        width: 52.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE4F9FF),
                          borderRadius: BorderRadius.circular(150.r),
                          //border: Border.all(color: Colors.grey),
                        ),
                        child: Image.asset("assets/icons/Vector2.png",color: Color(0xFF2A8DA7),),
                      ),
                    )
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 70.h,left:20.w),
                  child: Text(
                    "Chloe",
                    style: GoogleFonts.manrope(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(top: 70.h,left:80.w),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding:  EdgeInsets.all(18.w),
                          height: 52.h,
                          width: 52.w,
                          decoration: BoxDecoration(
                            color:  Colors.black,
                            borderRadius: BorderRadius.circular(150.r),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Image.asset("assets/icons/phone.png"),
                        ),
                      )
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(top: 70.h,left: 7.w,),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(18.w),
                          height: 52.h,
                          width: 52.w,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE4F9FF),
                            borderRadius: BorderRadius.circular(150.r),
                            //border: Border.all(color: Colors.grey),
                          ),
                          child: Image.asset("assets/icons/threedots.png"),
                        ),
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            Container(
              height: 563.h,
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
                  SizedBox(height: 15.h,),
                Container(
                  width: 337.w,height: 125.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r),
                        bottomRight: Radius.circular(10.r),
                        bottomLeft: Radius.zero.r
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w,top: 5.h,),
                        child: SizedBox(height: 60.h,width: 317.w,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(7.r),
                                topRight: Radius.circular(7.r),
                                bottomRight: Radius.circular(7.r),
                                bottomLeft: Radius.circular(7.r)
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                SizedBox(height: 4.h,),
                                Padding(
                                  padding: EdgeInsets.only(left: 20.w),
                                  child: Text(
                                    "You",
                                    style: GoogleFonts.manrope(fontSize: 14.sp,
                                        fontWeight: FontWeight.w600, color: Colors.blue),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20.w,top: 7.h),
                                  child: Text(
                                    "Can I come over?",
                                    style: GoogleFonts.manrope(fontSize: 14.sp, color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w,top: 5.h,),
                        child: Text(
                          "Of course, let me know if you’re on your way",
                          style: GoogleFonts.manrope(fontSize: 14.sp, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w,top: 8.h,),
                        child: Text(
                          "16:06",
                          style: GoogleFonts.manrope(fontSize: 10.sp, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding: EdgeInsets.only(left: 160.w),
                    child: Container(
                      height: 90.h,
                      width: 179.w,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.r),
                            topRight: Radius.circular(15.r),
                            bottomRight: Radius.zero.r,
                            bottomLeft: Radius.circular(15.r)
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 12.h),
                            child: Container(
                              width: 148.w,
                              height: 37.h,
                              decoration: BoxDecoration(
                                color: Color(0xFFBDB782),
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w),
                                    child: Icon(Icons.play_arrow, color: Color(0xFF2A8DA7)),
                                  ),
                                  SizedBox(width: 8.w),
                                  Text("0:20", style: GoogleFonts.manrope(fontSize: 12.sp,color: Color(0xFF2A8DA7))),
                                  SizedBox(width: 8.w),
                                  Image.asset("assets/icons/sound.png",width: 66.w,height: 21.h,)
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.h,left: 120.w),
                            child: Text(
                              "09:13 ",
                              style: GoogleFonts.manrope(fontSize: 10.sp, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding: EdgeInsets.only(right:80.w),
                    child: Container(
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.r),
                            topRight: Radius.circular(15.r),
                            bottomRight: Radius.circular(15.r),
                            bottomLeft: Radius.zero.r
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good morning, did you sleep well?",
                            style: GoogleFonts.manrope(fontSize: 14.sp, color: Colors.black),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            "09:05",
                            style: GoogleFonts.manrope(fontSize: 10.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  )
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}