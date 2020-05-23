import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../bubble_type.dart';


class ChatBubbleClipper4 extends CustomClipper<Path> {
  final BubbleType type;

  final double radius;
  final double offset;
  final double pinSize;

  ChatBubbleClipper4(
      {this.type, this.radius = 5, this.offset = 10, this.pinSize = 7});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      //    Sender 1
      path.addRRect(RRect.fromLTRBR(
          0, 0, size.width - pinSize, size.height, Radius.circular(radius)));

      var path2 = Path();
      path2.lineTo(pinSize, pinSize);
      path2.lineTo(0, 2 * pinSize);
      path2.lineTo(0, 0);

      path.addPath(path2,
          Offset(size.width - pinSize, size.height - offset - 2 * pinSize));

//    Sender 2
//    path.moveTo(mainRadius, 0);
//    path.lineTo(size.width - mainRadius - pinSize, 0);
//    path.arcToPoint(Offset(size.width - pinSize, mainRadius),
//        radius: Radius.circular(mainRadius));
//
//    path.lineTo(size.width - pinSize, size.height - offset - 2 * pinSize);
//    path.lineTo(size.width, size.height - offset - pinSize );
//    path.lineTo(size.width - pinSize, size.height - offset);
//    path.lineTo(size.width - pinSize, size.height - mainRadius);
//
//    path.arcToPoint(Offset(size.width - mainRadius - pinSize, size.height),
//        radius: Radius.circular(mainRadius));
//
//    path.lineTo(mainRadius, size.height);
//    path.arcToPoint(Offset(0, size.height - mainRadius),
//        radius: Radius.circular(mainRadius));
//    path.lineTo(0, mainRadius);
//    path.arcToPoint(Offset(mainRadius, 0), radius: Radius.circular(mainRadius));


    } else {
      //   Receiver 1
//    path.addRRect(RRect.fromLTRBR(
//        pinSize, 0, size.width, size.height, Radius.circular(mainRadius)));
//
//    var path2 = Path();
//    path2.lineTo(0, 2 * pinSize);
//    path2.lineTo(-pinSize, pinSize);
//    path2.lineTo(0, 0);
//
//    path.addPath(path2, Offset(pinSize, size.height - offset - 2 * pinSize));

//    Receiver 2
      path.moveTo(radius, 0);
      path.lineTo(size.width - radius, 0);
      path.arcToPoint(Offset(size.width, radius),
          radius: Radius.circular(radius));
      path.lineTo(size.width, size.height - radius);

      path.arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius));

      path.lineTo(radius + pinSize, size.height);
      path.arcToPoint(Offset(pinSize, size.height - radius),
          radius: Radius.circular(radius));

      path.lineTo(pinSize, size.height - offset);
      path.relativeLineTo(-pinSize, -pinSize);
      path.relativeLineTo(pinSize, -pinSize);
      path.lineTo(pinSize, radius);

      path.arcToPoint(Offset(radius + pinSize, 0),
          radius: Radius.circular(radius));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}