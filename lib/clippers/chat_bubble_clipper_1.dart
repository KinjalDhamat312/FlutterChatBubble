import 'package:flutter/material.dart';

import '../bubble_type.dart';

class ChatBubbleClipper1 extends CustomClipper<Path> {
  final BubbleType? type;
  final double radius;
  final double nipHeight;
  final double nipWidth;
  final double nipRadius;

  ChatBubbleClipper1(
      {this.type,
      this.radius = 10,
      this.nipHeight = 10,
      this.nipWidth = 15,
      this.nipRadius = 3});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.lineTo(size.width - nipRadius, 0);
      path.arcToPoint(Offset(size.width - nipRadius, nipRadius),
          radius: Radius.circular(nipRadius));
      path.lineTo(size.width - nipWidth, nipHeight);
      path.lineTo(size.width - nipWidth, size.height - radius);
      path.arcToPoint(Offset(size.width - nipWidth - radius, size.height),
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
      path.lineTo(radius + nipWidth, size.height);
      path.arcToPoint(Offset(nipWidth, size.height - radius),
          radius: Radius.circular(radius));
      path.lineTo(nipWidth, nipHeight);
      path.lineTo(nipRadius, nipRadius);
      path.arcToPoint(Offset(nipRadius, 0), radius: Radius.circular(nipRadius));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
