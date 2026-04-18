import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(7.w),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffE6F4F7) : Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: isSelected ? const Color(0xff2A9DB0) : Colors.grey.shade300,
            width: 1.5.w,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.all(7.w),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              title,
              style: GoogleFonts.manrope(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              subtitle,
              style: GoogleFonts.manrope(
                fontSize: 13.sp,
                color: isSelected
                    ? const Color(0xff2A9DB0)
                    : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}