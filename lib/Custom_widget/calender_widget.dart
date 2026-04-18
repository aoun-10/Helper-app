import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SchedulePicker extends StatefulWidget {
  const SchedulePicker({super.key});

  @override
  State<SchedulePicker> createState() => _SchedulePickerState();
}

class _SchedulePickerState extends State<SchedulePicker> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      height: 45.h,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        children: [
          SizedBox(width: 25.w),
          Text(
            selectedDate == null
                ? "Schedule..."
                : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
            style: GoogleFonts.manrope(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFFA4A4A4),
            ),
          ),
          SizedBox(width: 190.w),
          SizedBox(
            width: 24.w,
            height: 24.h,
            child: InkWell(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (picked != null) {
                  setState(() {
                    selectedDate = picked;
                  });
                }
              },
              child: Image.asset("assets/icons/calender.png"),
            ),
          ),
        ],
      ),
    );
  }
}
