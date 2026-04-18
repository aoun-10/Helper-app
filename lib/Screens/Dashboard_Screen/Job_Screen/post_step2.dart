import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helper_app/Custom_widget/job_screenheading.dart';
import 'package:helper_app/Custom_widget/textfield.dart';
import 'package:helper_app/Screens/Dashboard_Screen/Job_Screen/post_step1.dart';
import 'package:helper_app/Screens/Dashboard_Screen/Job_Screen/post_step3.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';

class PostStep2 extends StatefulWidget {
  const PostStep2({super.key});

  @override
  State<PostStep2> createState() => _PostStep2State();
}

class _PostStep2State extends State<PostStep2> {
  File? image;
  final picker = ImagePicker();

  Future openGallery() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
  }

  Future openFiles() async {
    FilePickerResult? result = await FilePicker.pickFiles(
      type: FileType.image,
    );

    if (result != null && result.files.single.path != null) {
      setState(() {
        image = File(result.files.single.path!);
      });
    }
  }

  void showUploadOptions() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) {
        return Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.photo),
              title: Text("Gallery"),
              onTap: () {
                Navigator.pop(context);
                openGallery();
              },
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text("Files"),
              onTap: () {
                Navigator.pop(context);
                openFiles();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 70.h, left: 20.w),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => PostStep1()
                        )
                    );
                  },
                  child: Container(
                      padding: EdgeInsets.all(18.w),
                      height: 52.h,
                      width: 52.w,
                      decoration: BoxDecoration(
                        color: Color(0xFFE4F9FF),
                        borderRadius: BorderRadius.circular(150.r),
                        //border: BoxBorder.all(color: Colors.grey)
                      ),
                      child: Image.asset("assets/icons/Vector2.png")
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Step 2 of 4",
                  style: GoogleFonts.manrope(
                    fontSize: 16.sp,
                    color: Color(0xFF747474),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            SizedBox(height: 15.h),
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
            SizedBox(height: 18.h,),
            Padding(
              padding: EdgeInsets.only(right: 120.w),
              child: ScreenHeading(
                  title: "Job Details",
                  subtitle: "Enter All the required details"
              ),
            ),
            SizedBox(height: 20.h,),
            SizedBox(width: 315.w, height: 45.h,
                child: TextfieldScreen(
                  controller: TextEditingController(),
                  hintText: "Job Title.......",
                )
            ),
            SizedBox(height: 12.h,),
            SizedBox(width: 315.w, height: 60.h,
                child: TextfieldScreen(
                  controller: TextEditingController(),
                  hintText: "Description....",
                )
            ),
            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Add Photos",
                  style: GoogleFonts.manrope(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            SizedBox(height: 15.h),

            GestureDetector(
              onTap: showUploadOptions,
              child: Container(
                width: 315.w,
                height: 120.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: 1.5.w,
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                  image: image != null
                      ? DecorationImage(
                    image: FileImage(image!),
                    fit: BoxFit.cover,
                  )
                      : null,
                ),
                child: image == null
                    ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/folderupload.png",
                      width: 40.w,
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Upload Photos",
                      style: GoogleFonts.manrope(
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                )
                    : null,
              ),
            ),

            SizedBox(height: 90.h),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: Size(315.w, 55.h),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => PostStep3())
                );
              },
              child: Text(
                "Next",
                style: GoogleFonts.manrope(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}