import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../bubble_type.dart';

class ChatBubbleClipper9 extends CustomClipper<Path> {
  final BubbleType type;
  final double radius;
  final double secondRadius;

  ChatBubbleClipper9({this.type, this.radius = 15, this.secondRadius = 2});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.addRRect(RRect.fromLTRBR(
          0, 0, size.width, size.height, Radius.circular(radius)));
      var path2 = Path();
      path2.addRRect(RRect.fromLTRBAndCorners(0, 0, radius, radius,
          bottomRight: Radius.circular(secondRadius)));
      path.addPath(path2, Offset(size.width - radius, size.height - radius));

//    Sender 2
//    path.moveTo(mainRadius, 0);
//    path.lineTo(size.width - mainRadius, 0);
//    path.arcToPoint(Offset(size.width, mainRadius),
//        radius: Radius.circular(mainRadius));
//    path.lineTo(size.width, size.height - secondRadius);
//    path.arcToPoint(Offset(size.width - secondRadius, size.height),
//        radius: Radius.circular(secondRadius));
//    path.lineTo(mainRadius, size.height);
//    path.arcToPoint(Offset(0, size.height - mainRadius),
//        radius: Radius.circular(mainRadius));
//    path.lineTo(0, mainRadius);
//    path.arcToPoint(Offset(mainRadius, 0), radius: Radius.circular(mainRadius));

    } else {
      //   Receiver 1

//    path.addRRect(RRect.fromLTRBR(
//        0, 0, size.width, size.height, Radius.circular(mainRadius)));
//    var path2 = Path();
//    path2.addRRect(RRect.fromLTRBAndCorners(0, 0, mainRadius, mainRadius,
//        topLeft: Radius.circular(secondRadius)));
//    path.addPath(
//        path2, Offset(0,0));

//    Receiver 2
      path.moveTo(radius, 0);
      path.lineTo(size.width - radius, 0);
      path.arcToPoint(Offset(size.width, radius),
          radius: Radius.circular(radius));
      path.lineTo(size.width, size.height - radius);
      path.arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius));
      path.lineTo(radius, size.height);
      path.arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius));
      path.lineTo(0, secondRadius);
      path.arcToPoint(Offset(secondRadius, 0),
          radius: Radius.circular(secondRadius));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
