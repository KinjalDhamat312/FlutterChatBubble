import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../bubble_type.dart';

class ChatBubbleClipper7 extends CustomClipper<Path> {
  final BubbleType type;
  final double radius;

  ChatBubbleClipper7({this.type, this.radius = 25});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.addRRect(RRect.fromLTRBAndCorners(0, 0, size.width, size.height,
          topLeft: Radius.circular(radius),
          bottomRight: Radius.circular(radius)));

//    path.moveTo(mainRadius, 0);
//    path.lineTo(size.width, 0);
//    path.lineTo(size.width, size.height - mainRadius);
//    path.arcToPoint(Offset(size.width - mainRadius, size.height),
//        radius: Radius.circular(mainRadius));
//    path.lineTo(0, size.height);
//    path.lineTo(0, mainRadius);
//    path.arcToPoint(Offset(mainRadius, 0), radius: Radius.circular(mainRadius));

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

