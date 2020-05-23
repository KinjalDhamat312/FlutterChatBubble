import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../bubble_type.dart';

class ChatBubbleClipper2 extends CustomClipper<Path> {
  final BubbleType type;

  final double radius;
  final double pinHeight;
  final double pinWidth;
  final double pinRadius;

  ChatBubbleClipper2(
      {this.type,
      this.radius = 10,
      this.pinHeight = 10,
      this.pinWidth = 15,
      this.pinRadius = 3});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.lineTo(size.width - radius - pinWidth, 0);
      path.arcToPoint(Offset(size.width - pinWidth, radius),
          radius: Radius.circular(radius));
      path.lineTo(size.width - pinWidth, size.height - pinHeight);
      path.lineTo(size.width - pinRadius, size.height - pinRadius);
      path.arcToPoint(Offset(size.width - pinRadius, size.height),
          radius: Radius.circular(pinRadius));
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
      path.lineTo(pinRadius, size.height);
      path.arcToPoint(Offset(pinRadius, size.height - pinRadius),
          radius: Radius.circular(pinRadius));
      path.lineTo(pinWidth, size.height - pinHeight);
      path.lineTo(pinWidth, radius);
      path.arcToPoint(Offset(radius + pinWidth, 0),
          radius: Radius.circular(radius));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
