import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceSelector extends StatefulWidget {
  const PriceSelector({super.key});

  @override
  State<PriceSelector> createState() => _PriceSelectorState();
}

class _PriceSelectorState extends State<PriceSelector> {
  String selectedOption = "Fixed Price";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 25.w),
        Text(
          selectedOption,
          style: GoogleFonts.manrope(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFFA4A4A4),
          ),
        ),
        SizedBox(width: 190.w),
        SizedBox(
          width: 24.w,
          height: 24.h,
          child: InkWell(
            onTap: () async {
              final option = await showMenu<String>(
                context: context,
                position: RelativeRect.fromLTRB(200, 310, 10, 150),
                items: [
                  const PopupMenuItem(value: "Per Hour", child: Text("Per Hour")),
                  const PopupMenuItem(value: "Per Day", child: Text("Per Day")),
                  const PopupMenuItem(value: "Fixed Price", child: Text("Fixed Price")),
                ],
              );
              if (option != null) {
                setState(() {
                  selectedOption = option;
                });
              }
            },
            child: Image.asset("assets/icons/fixedprice.png"),
          ),
        ),
      ],
    );
  }
}
