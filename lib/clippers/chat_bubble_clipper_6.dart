import 'package:flutter/cupertino.dart';

import '../bubble_type.dart';

class ChatBubbleClipper6 extends CustomClipper<Path> {
  final BubbleType type;
  final double radius;

  final double pinSize;

  final double sizeRatio;

  ChatBubbleClipper6(
      {this.type, this.radius = 10, this.pinSize = 8, this.sizeRatio = 2});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.lineTo(size.width - radius - pinSize, 0);
      path.arcToPoint(Offset(size.width - pinSize, radius),
          radius: Radius.circular(radius));

      path.lineTo(size.width - pinSize, size.height - sizeRatio * pinSize);

      path.lineTo(size.width - pinSize / sizeRatio, size.height - pinSize);

      path.quadraticBezierTo(size.width, size.height, size.width - pinSize,
          size.height - pinSize / sizeRatio);

      path.lineTo(size.width - pinSize, size.height - pinSize / sizeRatio);

      path.lineTo(size.width - sizeRatio * pinSize, size.height - pinSize);

      path.lineTo(radius, size.height - pinSize);

      path.arcToPoint(Offset(0, size.height - radius - pinSize),
          radius: Radius.circular(radius));

      path.lineTo(0, radius);
      path.arcToPoint(Offset(radius, 0), radius: Radius.circular(radius));
    } else {
      path.lineTo(size.width - radius, 0);
      path.arcToPoint(Offset(size.width, radius),
          radius: Radius.circular(radius));
      path.lineTo(size.width, size.height - radius - pinSize);
      path.arcToPoint(Offset(size.width - radius, size.height - pinSize),
          radius: Radius.circular(radius));

      path.lineTo(sizeRatio * pinSize, size.height - pinSize);

      path.lineTo(pinSize, size.height - pinSize / sizeRatio);

      path.quadraticBezierTo(
          0, size.height, pinSize / sizeRatio, size.height - pinSize);

      path.lineTo(pinSize / sizeRatio, size.height - pinSize);

      path.lineTo(pinSize, size.height - sizeRatio * pinSize);

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
