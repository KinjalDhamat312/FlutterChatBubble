import 'package:flutter/material.dart';

import '../bubble_type.dart';

/// This class is a sample of a custom clipper that creates a visually
/// appealing chat bubble.
///
/// The chat bubble is shaped as shown in the following illustration:
/// ![Image](https://user-images.githubusercontent.com/25680329/218024913-f5d31b3d-c948-4c9b-986d-4b6f37c5d856.png)
class ChatBubbleClipper6 extends CustomClipper<Path> {
  ///The values assigned to the clipper types [BubbleType.sendBubble] and
  ///[BubbleType.receiverBubble] are distinct.
  final BubbleType? type;

  ///The radius, which creates the curved appearance of the chat widget,
  ///has a default value of 10.
  final double radius;

  /// The "nip" creates the curved shape of the chat widget
  /// and has a default nipSize of 8.
  final double nipSize;

  /// The "nip" shapes the curve of the chat widget, and the
  /// width ratio is controlled by this property, which has a default value of 2.
  final double sizeRatio;

  ChatBubbleClipper6(
      {this.type, this.radius = 10, this.nipSize = 8, this.sizeRatio = 2});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (type == BubbleType.sendBubble) {
      path.lineTo(size.width - radius - nipSize, 0);
      path.arcToPoint(Offset(size.width - nipSize, radius),
          radius: Radius.circular(radius));

      path.lineTo(size.width - nipSize, size.height - sizeRatio * nipSize);

      path.lineTo(size.width - nipSize / sizeRatio, size.height - nipSize);

      path.quadraticBezierTo(size.width, size.height, size.width - nipSize,
          size.height - nipSize / sizeRatio);

      path.lineTo(size.width - nipSize, size.height - nipSize / sizeRatio);

      path.lineTo(size.width - sizeRatio * nipSize, size.height - nipSize);

      path.lineTo(radius, size.height - nipSize);

      path.arcToPoint(Offset(0, size.height - radius - nipSize),
          radius: Radius.circular(radius));

      path.lineTo(0, radius);
      path.arcToPoint(Offset(radius, 0), radius: Radius.circular(radius));
    } else {
      path.lineTo(size.width - radius, 0);
      path.arcToPoint(Offset(size.width, radius),
          radius: Radius.circular(radius));
      path.lineTo(size.width, size.height - radius - nipSize);
      path.arcToPoint(Offset(size.width - radius, size.height - nipSize),
          radius: Radius.circular(radius));

      path.lineTo(sizeRatio * nipSize, size.height - nipSize);

      path.lineTo(nipSize, size.height - nipSize / sizeRatio);

      path.quadraticBezierTo(
          0, size.height, nipSize / sizeRatio, size.height - nipSize);

      path.lineTo(nipSize / sizeRatio, size.height - nipSize);

      path.lineTo(nipSize, size.height - sizeRatio * nipSize);

      path.lineTo(nipSize, radius);
      path.arcToPoint(Offset(radius + nipSize, 0),
          radius: Radius.circular(radius));
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
