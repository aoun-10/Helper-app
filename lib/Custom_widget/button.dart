import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(top: 12.h,right: 20.w),
        child: Container(
            padding: EdgeInsets.all(10.w),
            height: 52.h,
            width: 52.w,
            decoration: BoxDecoration(
              color:Color(0xFFF1EAFF),
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Image.asset("assets/icons/Vector.png")
        ),
      ),
    );
  }
}
