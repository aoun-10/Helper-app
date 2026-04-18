import 'package:flutter/material.dart';

class ExactNotchShape extends NotchedShape {
  @override
  Path getOuterPath(Rect host, Rect? guest) {
    if (guest == null) return Path()..addRect(host);

    final double fabRadius = guest.width / 2;

    final double notchRadius = fabRadius - 9;

    final double centerX = guest.center.dx;

    final double sideExtension = 12;

    Path path = Path();

    path.moveTo(host.left, host.top);

    path.lineTo(centerX - notchRadius - sideExtension, host.top);

    path.arcToPoint(
      Offset(centerX + notchRadius + sideExtension, host.top),
      radius: Radius.circular(notchRadius + sideExtension),
      clockwise: false,
    );

    path.lineTo(host.right, host.top);

    path.lineTo(host.right, host.bottom);
    path.lineTo(host.left, host.bottom);
    path.close();

    return path;
  }
}