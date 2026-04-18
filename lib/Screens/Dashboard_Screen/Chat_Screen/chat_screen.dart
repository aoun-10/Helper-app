import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Custom_widget/textfield.dart';
import 'package:helper_app/Screens/Dashboard_Screen/Chat_Screen/messages_screen.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECEC),
      body: Column(
        children: [
          Align(alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 60.h,left: 20.w),
              child: Text("Chats",style: GoogleFonts.manrope(
                fontWeight: FontWeight.bold,
                fontSize: 24.sp,
                color: Colors.black
              ),),
            ),
          ),
          SizedBox(height:50.h,),
          Expanded(
            child: Container(
                height: 530.h,
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
                      Align(alignment: Alignment.topLeft,
                        child: Padding(
                          padding:  EdgeInsets.only(left: 20.w),
                          child: Text("Recent chats",style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: Colors.black
                          ),),
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      Container1(
                        text: 'Kaitlyn',
                        text1: 'Have a good one!',
                        text2: '3:02 PM',
                      ),
                      SizedBox(height: 5.h,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context)=>MessagesScreen())
                          );
                        },
                        child: Container1(
                          text: 'Chloe',
                          text1: 'Hello, Are you......',
                          text2: '2:58 PM',
                          image: "assets/images/Chloe.png",
                        ),
                      ),
                      SizedBox(height: 5.h,),
                      Container1(
                        text: 'Kaitlyn',
                        text1: 'Have a good one!',
                        text2: '3:02 PM',
                        image: "assets/images/Kaitlyn1.png",
                      ),
                      SizedBox(height: 5.h,),
                      Container1(
                        text: 'Chloe',
                        text1: 'Hello, Are you......',
                        text2: '2:58 PM',
                        image: "assets/images/Chloe1.png",
                      ),
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
class Container1 extends StatelessWidget {
  final String image;
  final String text;
  final String text1;
  final String text2;

  const Container1({
    super.key,
    this.image = "",
    required this.text,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,height: 70.h,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color:Colors.grey.shade300),
          borderRadius: BorderRadius.all(Radius.circular(15.r))
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 13.w),
            child: CircleAvatar(
              backgroundColor: Colors.white,
            child: SizedBox(width: 40.w,height: 40.h,
               child:  image.isNotEmpty
              ? Image.asset(image)
              :Image.asset("assets/images/Kaitlyn.png"),
            ),),
          ),
          SizedBox(width: 9.w,),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 14.h,right:25.w),
                    child: Text(text,style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: Colors.black
                    ),),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 14.h,left: 140.w),
                    child: Text(text2,style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: Colors.black
                    ),),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 17.w,height: 14.h,
                      child: Image.asset("assets/images/duobleclick.png")),
                  Padding(
                    padding: EdgeInsets.only(right: 130.w),
                    child: Text(text1,style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: Colors.black
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: SizedBox(width: 16.w,height: 16.h,
                      child: CircleAvatar(
                        child: Text("2",style:  GoogleFonts.manrope(
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                            color: Colors.black
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}