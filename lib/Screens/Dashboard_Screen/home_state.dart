import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:helper_app/Custom_widget/notch_appbar.dart';
import 'package:helper_app/Screens/Dashboard_Screen/Chat_Screen/chat_screen.dart';
import 'package:helper_app/Screens/Dashboard_Screen/Job_Screen/post_step1.dart';
import 'package:helper_app/Screens/Dashboard_Screen/home_screen.dart';
import 'package:helper_app/Screens/Dashboard_Screen/Job_Screen/job_screen.dart';
import 'package:helper_app/Screens/Dashboard_Screen/Profile_Screens/profile_screen.dart';

class HomeStateScreen extends StatefulWidget {
  const HomeStateScreen({super.key});

  @override
  State<HomeStateScreen> createState() => _HomeStateScreenState();
}

class _HomeStateScreenState extends State<HomeStateScreen> {
  int currentindex = 0;

  List<Widget> get screens => [
    Homepage(),
    ChatPage(),
    JobPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      floatingActionButton: Transform.translate(
        offset: Offset(0, -10),
        child: FloatingActionButton(
          onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(
                builder: (context)=>PostStep1())
            );
          },
          backgroundColor: Colors.black,
          elevation: 8,shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(30.r)),
          child: Icon(Icons.add,color: Colors.white,size: 30.sp,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[currentindex],
      bottomNavigationBar: BottomAppBar(
        height: 67.h,
        notchMargin: 5.0,
        shape: ExactNotchShape(),
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5.h,),
              child: navItem("assets/icons/home.png", "Home", 0),
            ),
            SizedBox(width: 5.w,),
            Padding(
              padding: EdgeInsets.only(left: 25.w,top: 5.h,right: 80.w),
              child: navItem("assets/icons/chat.png", "Chat", 1),
            ),
            SizedBox(width: 40.w,),
            Padding(
              padding: EdgeInsets.only(top: 5.h,right: 20.w,),
              child: navItem("assets/icons/job.png", "Jobs", 2),
            ),
            SizedBox(width: 5.w,),
            Padding(
              padding: EdgeInsets.only(top: 5.h,),
              child: navItem("assets/icons/profile.png", "Profile", 3),
            ),
          ],
        ),
      ),
    );
  }

  Widget navItem(String icon, String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentindex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 24.h, width: 24.w,
              child: Image.asset(
                icon,color: currentindex == index ? Colors.white : Colors.grey)
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 10.sp,
              color: currentindex == index ? Colors.white : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
