import 'package:flutter/material.dart';

import '../bubble_type.dart';

class ChatBubbleClipper7 extends CustomClipper<Path> {
  final BubbleType? type;
  final double radius;

  ChatBubbleClipper7({this.type, this.radius = 25});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.addRRect(RRect.fromLTRBAndCorners(0, 0, size.width, size.height,
          topLeft: Radius.circular(radius),
          bottomRight: Radius.circular(radius)));
    } else {
      path.addRRect(RRect.fromLTRBAndCorners(0, 0, size.width, size.height,
          topRight: Radius.circular(radius),
          bottomLeft: Radius.circular(radius)));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
