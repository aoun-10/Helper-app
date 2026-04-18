import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomSwitch extends StatefulWidget {
  final bool initialValue;
  final Function(bool)? onChanged;

  const CustomSwitch({
    super.key,
    this.initialValue = false,
    this.onChanged,
  });

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late bool isOn;

  @override
  void initState() {
    super.initState();
    isOn = widget.initialValue;
  }

  void toggle() {
    setState(() {
      isOn = !isOn;
    });
    if (widget.onChanged != null) {
      widget.onChanged!(isOn);
    }
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggle,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: 35.w,
        height: 20.h,
        padding: EdgeInsets.all(2.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: isOn ? Colors.black : Colors.grey.shade400,
        ),
        child: Align(
          alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: 13.w,
            height: 13.h,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
