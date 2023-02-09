import 'package:flutter/material.dart';

import '../bubble_type.dart';

class ChatBubbleClipper4 extends CustomClipper<Path> {
  final BubbleType? type;
  final double radius;
  final double offset;
  final double nipSize;

  ChatBubbleClipper4(
      {this.type, this.radius = 5, this.offset = 10, this.nipSize = 7});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.addRRect(RRect.fromLTRBR(
          0, 0, size.width - nipSize, size.height, Radius.circular(radius)));

      var path2 = Path();
      path2.lineTo(nipSize, nipSize);
      path2.lineTo(0, 2 * nipSize);
      path2.lineTo(0, 0);

      path.addPath(path2,
          Offset(size.width - nipSize, size.height - offset - 2 * nipSize));
    } else {
      path.addRRect(RRect.fromLTRBR(
          nipSize, 0, size.width, size.height, Radius.circular(radius)));

      var path2 = Path();
      path2.lineTo(0, 2 * nipSize);
      path2.lineTo(-nipSize, nipSize);
      path2.lineTo(0, 0);

      path.addPath(path2, Offset(nipSize, size.height - offset - 2 * nipSize));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
