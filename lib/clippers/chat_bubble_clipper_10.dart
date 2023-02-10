import 'package:flutter/material.dart';

import '../bubble_type.dart';

/// This class is a sample of a custom clipper that creates a visually
/// appealing chat bubble.
///
/// The chat bubble is shaped as shown in the following illustration:
/// ![Image](https://user-images.githubusercontent.com/25680329/218025070-e764cfc7-3ac7-4ee5-838c-3b52c7ffaa52.png)
class ChatBubbleClipper10 extends CustomClipper<Path> {
  ///The values assigned to the clipper types [BubbleType.sendBubble] and
  ///[BubbleType.receiverBubble] are distinct.
  final BubbleType? type;

  ///The radius, which creates the curved appearance of the chat widget,
  ///has a default value of 15.
  final double radius;

  /// The "nip" creates the curved shape of the chat widget
  /// and has a default nipSize of 8.
  final double nipSize;

  /// The "nip" shapes the curve of the chat widget, and the
  /// width ratio is controlled by this property, which has a default value of 3.
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
