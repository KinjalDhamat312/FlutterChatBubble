import 'package:flutter/material.dart';

import '../bubble_type.dart';

class ChatBubbleClipper10 extends CustomClipper<Path> {
  final BubbleType? type;
  final double radius;
  final double nipSize;
  final double sizeRatio;

  ChatBubbleClipper10(
      {this.type, this.radius = 15, this.nipSize = 8, this.sizeRatio = 3});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.moveTo(radius, nipSize);
      path.lineTo(size.width - nipSize * sizeRatio, nipSize);

      path.quadraticBezierTo(size.width - nipSize, nipSize, size.width, 0);
      path.quadraticBezierTo(size.width - nipSize, nipSize,
          size.width - nipSize, sizeRatio * nipSize);

      path.lineTo(size.width - nipSize, size.height - radius);
      path.arcToPoint(Offset(size.width - nipSize - radius, size.height),
          radius: Radius.circular(radius));
      path.lineTo(radius, size.height);
      path.arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius));
      path.lineTo(0, radius + nipSize);
      path.arcToPoint(Offset(radius, nipSize), radius: Radius.circular(radius));
    } else {
      path.quadraticBezierTo(nipSize, nipSize, sizeRatio * nipSize, nipSize);
      path.lineTo(size.width - radius, nipSize);
      path.arcToPoint(Offset(size.width, nipSize + radius),
          radius: Radius.circular(radius));
      path.lineTo(size.width, size.height - radius);
      path.arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius));
      path.lineTo(nipSize + radius, size.height);
      path.arcToPoint(Offset(nipSize, size.height - radius),
          radius: Radius.circular(radius));
      path.lineTo(nipSize, sizeRatio * nipSize);
      path.quadraticBezierTo(nipSize, nipSize, 0, 0);
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
