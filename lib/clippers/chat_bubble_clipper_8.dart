import 'package:flutter/material.dart';

import '../bubble_type.dart';

/// This class is a sample of a custom clipper that creates a visually
/// appealing chat bubble.
///
/// The chat bubble is shaped as shown in the following illustration:
/// ![Image](https://user-images.githubusercontent.com/25680329/218025005-22856762-9729-4000-8fdd-008d04e3b1ae.png)
class ChatBubbleClipper8 extends CustomClipper<Path> {
  ///The values assigned to the clipper types [BubbleType.sendBubble] and
  ///[BubbleType.receiverBubble] are distinct.
  final BubbleType? type;

  ///The radius, which creates the curved appearance of the chat widget,
  ///has a default value of 20.
  final double radius;

  ChatBubbleClipper8({this.type, this.radius = 20});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.addRRect(RRect.fromLTRBR(
          0, 0, size.width - radius / 3, size.height, Radius.circular(radius)));

      var path2 = Path();
      path2.arcToPoint(Offset(-radius, radius / 6),
          radius: Radius.circular(radius), clockwise: true);
      path2.lineTo(-radius / 1.5, radius / 1.5);
      path2.arcToPoint(Offset(0, 0),
          radius: Radius.circular(radius * 1.3), clockwise: false);

      path.addPath(path2, Offset(size.width, 0));
      path.addPath(path2, Offset(size.width, 0));
    } else {
      path.addRRect(RRect.fromLTRBR(
          radius / 3, 0, size.width, size.height, Radius.circular(radius)));

      var path2 = Path();
      path2.arcToPoint(Offset(radius, radius / 6),
          radius: Radius.circular(radius), clockwise: false);
      path2.lineTo(radius / 1.5, radius / 1.5);
      path2.arcToPoint(Offset(0, 0), radius: Radius.circular(radius * 1.3));

      path.addPath(path2, Offset(0, 0));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
