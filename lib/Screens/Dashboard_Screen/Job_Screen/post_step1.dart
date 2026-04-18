import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Custom_widget/category_option.dart';
import 'package:helper_app/Custom_widget/job_screenheading.dart';
import 'package:helper_app/Screens/Dashboard_Screen/Job_Screen/post_step2.dart';
import 'package:helper_app/Screens/Dashboard_Screen/home_state.dart';

class PostStep1 extends StatefulWidget {
  const PostStep1({super.key});

  @override
  State<PostStep1> createState() => _PostStep1State();
}

class _PostStep1State extends State<PostStep1> {
  int selectedIndex = 0;
  final List<Map<String, dynamic>> categories = [
    {
      "title": "Cleaning",
      "image": "assets/icons/cleaning.png",
    },
    {
      "title": "Delivery",
      "image": "assets/icons/Trolley.png",
    },
    {
      "title": "Repair",
      "image": "assets/icons/Tools.png",
    },
    {
      "title": "Other",
      "image": "assets/icons/threedots.png",
    },
  ];
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
                      child: Image.asset("assets/icons/Vector2.png")
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h,),
            Padding(
              padding: EdgeInsets.only(right: 230.w),
              child: Text(
                "Step 1 of 4",
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
                    color: Colors.grey.shade300,
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
              padding: EdgeInsets.only(right: 50.w),
              child: ScreenHeading(
                  title: "What do you\nneed help with?",
                  subtitle: "Select a category that best describes\nyour task"
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              //padding: EdgeInsets.all(7),
              child: GridView.builder(
                shrinkWrap: true,
                physics:  NeverScrollableScrollPhysics(),
                itemCount: categories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.h,
                  crossAxisSpacing: 13.w,
                  childAspectRatio: 1.4,
                ),
                itemBuilder: (context, index) {
                  return CategoryCard(
                    title: categories[index]["title"],
                    subtitle:
                    selectedIndex == index ? "Selected" : "Available",
                    imagePath: categories[index]["image"],
                    isSelected: selectedIndex == index,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 82.h,),
            ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: Size(315.w, 55.h)
        
            ),
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context)=>PostStep2())
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
