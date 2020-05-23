import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../bubble_type.dart';

class ChatBubbleClipper3 extends CustomClipper<Path> {
  final BubbleType type;
  final double radius;

  final double pinSize;

  ChatBubbleClipper3({this.type, this.radius = 15, this.pinSize = 7});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {

      path.moveTo(radius, 0);
      path.lineTo(size.width - radius - pinSize, 0);
      path.arcToPoint(Offset(size.width - pinSize, radius),
          radius: Radius.circular(radius));

      path.lineTo(size.width - pinSize, size.height - pinSize);

      path.arcToPoint(Offset(size.width, size.height),
          radius: Radius.circular(pinSize), clockwise: false);

      path.arcToPoint(Offset(size.width - 2 * pinSize, size.height - pinSize),
          radius: Radius.circular(2 * pinSize));

      path.arcToPoint(Offset(size.width - 4 * pinSize, size.height),
          radius: Radius.circular(2 * pinSize));

      path.lineTo(radius, size.height);
      path.arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius));
      path.lineTo(0, radius);
      path.arcToPoint(Offset(radius, 0), radius: Radius.circular(radius));
    } else {
      path.moveTo(radius, 0);
      path.lineTo(size.width - radius, 0);
      path.arcToPoint(Offset(size.width, radius),
          radius: Radius.circular(radius));

      path.lineTo(size.width, size.height - radius);

      path.arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius));

      path.lineTo(4 * pinSize, size.height);
      path.arcToPoint(Offset(2 * pinSize, size.height - pinSize),
          radius: Radius.circular(2 * pinSize));

      path.arcToPoint(Offset(0, size.height),
          radius: Radius.circular(2 * pinSize));

      path.arcToPoint(Offset(pinSize, size.height - pinSize),
          radius: Radius.circular(pinSize), clockwise: false);

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


