import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../bubble_type.dart';

class ChatBubbleClipper1 extends CustomClipper<Path> {

  final BubbleType type;

  final double radius;
  final double pinHeight;
  final double pinWidth;
  final double pinRadius;

  ChatBubbleClipper1(
      {this.type,
      this.radius = 10,
      this.pinHeight = 10,
      this.pinWidth = 15,
      this.pinRadius = 3});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.lineTo(size.width - pinRadius, 0);
      path.arcToPoint(Offset(size.width - pinRadius, pinRadius),
          radius: Radius.circular(pinRadius));
      path.lineTo(size.width - pinWidth, pinHeight);
      path.lineTo(size.width - pinWidth, size.height - radius);
      path.arcToPoint(Offset(size.width - pinWidth - radius, size.height),
          radius: Radius.circular(radius));
      path.lineTo(radius, size.height);
      path.arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius));
      path.lineTo(0, radius);
      path.arcToPoint(Offset(radius, 0), radius: Radius.circular(radius));
    } else {
      path.lineTo(size.width - radius, 0);
      path.arcToPoint(Offset(size.width, radius),
          radius: Radius.circular(radius));
      path.lineTo(size.width, size.height - radius);
      path.arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius));
      path.lineTo(radius + pinWidth, size.height);
      path.arcToPoint(Offset(pinWidth, size.height - radius),
          radius: Radius.circular(radius));
      path.lineTo(pinWidth, pinHeight);
      path.lineTo(pinRadius, pinRadius);
      path.arcToPoint(Offset(pinRadius, 0), radius: Radius.circular(pinRadius));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
